using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rotator : MonoBehaviour {

	public float rotationrate;
	public bool env;
	public bool y;

	// Use this for initialization
	void Start () {
		if (env) {
			rotationrate = .5f;
		} else {
			rotationrate = 3.5f;
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (!y) {
			transform.rotation *= Quaternion.Euler (0, 0, rotationrate * Time.deltaTime * 150);
		} else {
			transform.rotation *= Quaternion.Euler (0, rotationrate * Time.deltaTime * 150, 0);
		}
	}
}
