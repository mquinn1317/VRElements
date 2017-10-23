// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Toon/Basic Outline-Alpha-Backup" {
     Properties {
         _Color ("Main Color", Color) = (.5,.5,.5,1)
         _OutlineColor ("Outline Color", Color) = (0,0,0,1)
         _Outline ("Outline width", Range (.002, 0.03)) = .005
         _MainTex ("Base (RGB)", 2D) = "white" { }
         _ToonShade ("ToonShader Cubemap(RGB)", CUBE) = "" { Texgen CubeNormal }

         _Glossiness("Smoothness", Range(0,1)) = 0.5

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
 #include "UnityCG.cginc"
 
 struct appdata {
     float4 vertex : POSITION;
     float3 normal : NORMAL;
 };
 struct v2f {
     float4 pos : POSITION;
     float4 color : COLOR;
 };
 
 uniform float _Outline;
 uniform float4 _OutlineColor;
 
 v2f vert(appdata v) {
     v2f o;
     o.pos = UnityObjectToClipPos(v.vertex);
     float3 norm   = mul ((float3x3)UNITY_MATRIX_IT_MV, v.normal);
     float2 offset = TransformViewToProjection(norm.xy);
     o.pos.xy += offset * o.pos.z * _Outline;
     o.color = _OutlineColor;
     return o;
 }
 ENDCG
 SubShader {
     Tags { "RenderType"="Opaque" "Queue"="Transparent" }
     Pass {
         Name "BASE"
         Blend SrcAlpha OneMinusSrcAlpha
         CGPROGRAM
         #pragma vertex vert
         #pragma fragment frag
         #pragma fragmentoption ARB_precision_hint_fastest 
         #include "UnityCG.cginc"
         sampler2D _MainTex;
         samplerCUBE _ToonShade;
         float4 _MainTex_ST;
         float4 _Color;

         half _Distance;
         float4 _Center;
		 half _Interpolation;
		 sampler2D _DissTexture;

         struct appdataa {
             float4 vertex : POSITION;
             float2 texcoord : TEXCOORD0;
             float3 normal : NORMAL;
         };
         
         struct v2fa {
             float4 pos : POSITION;
             float2 texcoord : TEXCOORD0;
             float3 cubenormal : TEXCOORD1;

         	 float2 uv_DissTexture : POSITION1;
			 float3 worldPos : POSITION2;
         };

         v2fa vert (appdataa v)
         {
             v2fa o;
             o.pos = UnityObjectToClipPos (v.vertex);
             o.texcoord = TRANSFORM_TEX(v.texcoord, _MainTex);
             o.cubenormal = mul (UNITY_MATRIX_MV, float4(v.normal,0));
             return o;
         }
         float4 frag (v2fa i) : COLOR
         {
         	 float l = length(_Center.xyz - i.worldPos.xyz);
             float4 col = _Color * tex2D(_MainTex, i.texcoord);
             float4 cube = texCUBE(_ToonShade, i.cubenormal);
             float v = saturate(_Distance - l + (tex2D(_DissTexture, i.uv_DissTexture) * _Interpolation * saturate(_Distance)));
             return float4(2.0f * cube.rgb * col.rgb, v);
         }
         ENDCG            
     }
     Pass {
         Name "OUTLINE"
         Tags { "LightMode" = "Always" }
         Cull Front
         ZWrite On
         ColorMask RGB
         Blend SrcAlpha OneMinusSrcAlpha
         CGPROGRAM
         #pragma vertex vert
         #pragma fragment frag
         half4 frag(v2f i) :COLOR { return i.color; }
         ENDCG
     }

 }
 
 SubShader {
     Tags { "RenderType"="Opaque" "Queue"="Transparent"}
     Pass {
         Name "BASE"
         Blend SrcAlpha OneMinusSrcAlpha
         CGPROGRAM
         #pragma vertex vert
         #pragma fragment frag
         #pragma fragmentoption ARB_precision_hint_fastest 
         #include "UnityCG.cginc"
         sampler2D _MainTex;
         samplerCUBE _ToonShade;
         float4 _MainTex_ST;
         float4 _Color;

         half _Distance;
         float4 _Center;
		 half _Interpolation;
		 sampler2D _DissTexture;

         struct appdataa {
             float4 vertex : POSITION;
             float2 texcoord : TEXCOORD0;
             float3 normal : NORMAL;
         };
         
         struct v2fa {
             float4 pos : POSITION;
             float2 texcoord : TEXCOORD0;
             float3 cubenormal : TEXCOORD1;

             float2 uv_DissTexture : POSITION1;
			 float3 worldPos : POSITION2;
         };
         v2fa vert (appdataa v)
         {
             v2fa o;
             o.pos = UnityObjectToClipPos (v.vertex);
             o.texcoord = TRANSFORM_TEX(v.texcoord, _MainTex);
             o.cubenormal = mul (UNITY_MATRIX_MV, float4(v.normal,0));
             return o;
         }
         float4 frag (v2fa i) : COLOR
         {

         	 float l = length(_Center.xyz - i.worldPos.xyz);

             float4 col = _Color * tex2D(_MainTex, i.texcoord);
             float4 cube = texCUBE(_ToonShade, i.cubenormal);
             float v = saturate(_Distance - l + (tex2D(_DissTexture, i.uv_DissTexture) * _Interpolation * saturate(_Distance)));
             return float4(2.0f * cube.rgb * col.rgb, v);
         }
         ENDCG            
     }
     Pass {
         Name "OUTLINE"
         Tags { "LightMode" = "Always" }
         Cull Front
         ZWrite On
         ColorMask RGB
         Blend SrcAlpha OneMinusSrcAlpha
         CGPROGRAM
         #pragma vertex vert
         #pragma exclude_renderers shaderonly
         ENDCG
         SetTexture [_MainTex] { combine primary }
     }

 }
 
 Fallback "Toon/Basic"
 }