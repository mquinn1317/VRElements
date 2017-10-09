using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloatingPlatform : MonoBehaviour {

	public float velocity;
	public float ytop;
	public float rate, start;

	// Use this for initialization
	void Start () {
		velocity = start;
	}
	
	// Update is called once per frame
	void Update () {
		transform.position += new Vector3 (0, velocity, 0);
		if (transform.position.y > ytop) {
			velocity -= rate;
		} else {
			velocity += rate;
		}
	}
}
