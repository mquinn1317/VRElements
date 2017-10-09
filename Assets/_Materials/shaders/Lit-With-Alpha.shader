// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Toon/Lit-Alpha" {
	Properties {
		_Color ("Main Color", Color) = (0.5,0.5,0.5,1)
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_Ramp ("Toon Ramp (RGB)", 2D) = "gray" {} 

		_OutlineColor ("Outline Color", Color) = (0,0,0,1)
		_Outline ("Outline width", Range (.002, 0.03)) = .005
		_ToonShade ("ToonShader Cubemap(RGB)", CUBE) = "" { }
	}


	 SubShader {
     Tags {"Queue"="Transparent" "RenderType"="Transparent"} //Change this
	 
     UsePass "Toon/Basic Outline/OUTLINE"
     Pass {
         Name "BASE"
         //Cull Off //Remove this
         Blend SrcAlpha OneMinusSrcAlpha //Add This
         CGPROGRAM
         #pragma vertex vert
         #pragma fragment frag
         #pragma fragmentoption ARB_precision_hint_fastest 
         #include "UnityCG.cginc"
         sampler2D _MainTex;
         samplerCUBE _ToonShade;
         float4 _MainTex_ST;
         float4 _Color;
         struct appdata {
             float4 vertex : POSITION;
             float2 texcoord : TEXCOORD0;
             float3 normal : NORMAL;
         };
         struct v2f {
             float4 pos : POSITION;
             float2 texcoord : TEXCOORD0;
             float3 cubenormal : TEXCOORD1;
         };
         v2f vert (appdata v) {
             v2f o;
             o.pos = UnityObjectToClipPos (v.vertex);
             o.texcoord = TRANSFORM_TEX(v.texcoord, _MainTex);
             o.cubenormal = mul (UNITY_MATRIX_MV, float4(v.normal,0));
             return o;
         }
         float4 frag (v2f i) : COLOR {
             float4 col = _Color * tex2D(_MainTex, i.texcoord);
             float4 cube = texCUBE(_ToonShade, i.cubenormal);
             return float4(2.0f * cube.rgb * col.rgb, col.a);
         }
         ENDCG           
     }

 } 
 SubShader {
     Tags {"Queue"="Transparent" "RenderType"="Transparent"} //Change this
     Pass {
         Name "BASE"
         //Cull Off //Remove this
         Blend SrcAlpha OneMinusSrcAlpha //Add this
         SetTexture [_MainTex] {
             constantColor [_Color]
             Combine texture * constant
         } 
         SetTexture [_ToonShade] {
             combine texture * previous DOUBLE, previous
         }
     }

 }
 Fallback "VertexLit"
}
