// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

Shader "Custom/Dissolve/Distance/OpaqueToonShadow" {
	Properties{
		_Color("Color", Color) = (1,1,1,1)
		_MainTex("Albedo (RGB)", 2D) = "white" {}
		_Glossiness("Smoothness", Range(0,1)) = 0.5
		_Ramp ("Toon Ramp (RGB)", 2D) = "gray" {}
        _Brightness ("Brightness 1 = neutral", Float) = 1.0
		_OutlineColor ("Outline Color", Color) = (0,0,0,1)
		_Outline ("Outline width", Range (.002, 0.03)) = .005
		_SColor ("Shadow Color", Color) = (0.0,0.0,0.0,1)
        _LColor ("Highlight Color", Color) = (0.5,0.5,0.5,1)

		[NoScaleOffset] _MetallicGlossMap("Metallic", 2D) = "white" {}
		[Gamma]  _Metallic ("Metallic", Range(0.000000,1.000000)) = 0.000000
		_Center("Dissolve Center", Vector) = (0,0,0,0)
		_Distance("Dissolve Distance", Float) = 1
		_Interpolation("Dissolve Interpolation", Range(0,50)) = 1
		_DissTexture("Dissolve Texture", 2D) = "white" {}
		[HDR]_DissolveColor("Dissolve Color", Color) = (0,1,0,1)

		[NoScaleOffset] _BumpMap ("Normal Map", 2D) = "bump" {}
		_BumpScale ("Normal Influence", Range(0,10)) = 0.5

		[HDR]_EmissionColor ("Color", Color) = (0.000000,0.000000,0.000000,1.000000)
		[NoScaleOffset]_EmissionMap ("Emission", 2D) = "white" { }
	}

	  CGINCLUDE
        //@TODO: should this be pulled into a shader_feature, to be able to turn it off?
        #define _GLOSSYENV 1
        #define UNITY_SETUP_BRDF_INPUT SpecularSetup
    ENDCG
 
 		
		SubShader {
		Tags { "RenderType"="Transparent" "Queue"="Transparent"}
		LOD 200

		Pass
			{
				Name "META" 
				Tags { "LightMode"="Meta" }

				Cull Off

				CGPROGRAM
				#pragma vertex vert_meta
				#pragma fragment frag_meta

				#pragma shader_feature _EMISSION
				#pragma shader_feature _METALLICGLOSSMAP

				#include "UnityStandardMeta.cginc"
				ENDCG
			}

CGPROGRAM
#pragma surface surf ToonRamp fullforwardshadows alpha

sampler2D _Ramp;

// custom lighting function that uses a texture ramp based
// on angle between light direction and normal
#pragma lighting ToonRamp exclude_path:prepass
inline half4 LightingToonRamp (SurfaceOutput s, half3 lightDir, half atten)
{
	#ifndef USING_DIRECTIONAL_LIGHT
	lightDir = normalize(lightDir);
	#endif
	
	half d = dot (s.Normal, lightDir)*0.5 + 0.5;
	half3 ramp = tex2D (_Ramp, float2(d,d)).rgb;
	
	half4 c;
	c.rgb = s.Albedo * _LightColor0.rgb * ramp * (atten * 2);
	c.a = s.Alpha;
	return c;
}


		sampler2D _MainTex;
		float4 _Color;

		struct Input {
			float2 uv_MainTex : TEXCOORD0;
			float2 uv_BumpMap;
			float2 uv_DissTexture;
			float3 worldPos;
		};

		half _Metallic;
		half _Glossiness;
		sampler2D _MetallicGlossMap;

		sampler2D _EmissionMap;
		float4 _EmissionColor;
		float4 _DissolveColor;

		sampler2D _BumpMap;

		half _Distance;
		half _Interpolation;
		half _BumpScale;


		sampler2D _DissTexture;

		float4 _Center;

void surf (Input IN, inout SurfaceOutput o) {

	float l = length(_Center.xyz - IN.worldPos.xyz);
			
			//clip();

			fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb * _Color.rgb;

			//o.Normal = normalize(UnpackScaleNormal (tex2D (_BumpMap, IN.uv_BumpMap) , _BumpScale));

			//o.Emission = tex2D(_EmissionMap, IN.uv_MainTex) * _EmissionColor + saturate(1-(_Distance-l+0.5)) *_DissolveColor.rgb * tex2D(_DissTexture, IN.uv_DissTexture);
			o.Alpha = saturate(_Distance - l + (tex2D(_DissTexture, IN.uv_DissTexture) * _Interpolation * saturate(_Distance))) - 0.5 < 0 ? 0 : 1;

}
ENDCG

	} 

		Fallback "Diffuse"
}
	
