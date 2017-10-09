using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightBeamRotator : MonoBehaviour {

	public Material lightmat;
	public float xoffset;
	public float xspeed;

	// Use this for initialization
	void Start () {
		xoffset = 0;
	}
	
	// Update is called once per frame
	void Update () {
		xoffset += xspeed;
		lightmat.SetTextureOffset ("_MainTex", new Vector2 (xoffset, 0));
	}
}
