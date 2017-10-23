using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class skyboxrotator : MonoBehaviour {

	public Material skymat;
	public float xoffset;
	public float xspeed;

	// Use this for initialization
	void Start () {
		xoffset = 0;
	}

	// Update is called once per frame
	void Update () {
		xoffset += xspeed;
		if (xoffset > 360) {
			xoffset = 0;
		}
		skymat.SetFloat ("_Rotation", xoffset);
	}
}
