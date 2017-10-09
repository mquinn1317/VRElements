// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Unnamed Shaders/Toony Shadows Transparency"
{
    Properties
    {
        _Color ("Main Color", Color) = (1,1,1,1)
   
        _MainTex ("Base (RGB)", 2D) = "white" {}
        _Ramp ("Toon Ramp (RGB)", 2D) = "gray" {}
        _Brightness ("Brightness 1 = neutral", Float) = 1.0  
        _OutlineColor ("Outline Color", Color) = (0,0,0,1)
		_Outline ("Outline width", Range (.002, 0.03)) = .005
        _SColor ("Shadow Color", Color) = (0.0,0.0,0.0,1)
        _LColor ("Highlight Color", Color) = (0.5,0.5,0.5,1)
    }
 
    SubShader
    {
        //Pass
        //{
        UsePass "Toon/Basic Outline/OUTLINE"
 		UsePass "Toon/Lit-Alpha/FORWARD"
 		//UsePass "Toon/Basic/BASE"
              
        //}

        Pass
        {
            Tags {"RenderType"="Opaque" "LightMode" = "ForwardAdd" "Queue"="Transparent"}
            Blend One One
            CGPROGRAM
               
                #pragma vertex vert
                #pragma fragment frag
                #pragma multi_compile_fwdadd_fullshadows
                #pragma fragmentoption ARB_fog_exp2
                #pragma fragmentoption ARB_precision_hint_fastest
               
                #include "UnityCG.cginc"
                #include "AutoLight.cginc"
               
                struct v2f
                {
                    float4    pos            : SV_POSITION;
                    float2    uv            : TEXCOORD0;
                    LIGHTING_COORDS(1,2)
                };
 
                float4 _MainTex_ST;
 
                v2f vert (appdata_tan v)
                {
                    v2f o;
                   
                    o.pos = UnityObjectToClipPos( v.vertex);
                    o.uv = TRANSFORM_TEX (v.texcoord, _MainTex).xy;
                    TRANSFER_VERTEX_TO_FRAGMENT(o);
                    return o;
                }
 
                sampler2D _MainTex;
                fixed _Brightness;
 
                #if _COLOR_ON
                fixed4 _Color;
                #endif
 
                fixed4 frag(v2f i) : COLOR
                {
                    fixed atten = LIGHT_ATTENUATION(i) * _Brightness;    // Light attenuation + shadows.
                    //fixed atten = SHADOW_ATTENUATION(i)* _Brightness; // Shadows ONLY.
                    return tex2D(_MainTex, i.uv) * atten;//_Brightness;
                }
            ENDCG
        }
    }
   
    Fallback "Diffuse"
}