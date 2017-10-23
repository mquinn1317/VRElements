using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class boltbehavior : MonoBehaviour {

	public GameObject target;
	public Vector3 velocity;
	public Transform orthogonal;

	// Use this for initialization
	void Start () {
		velocity = target.transform.position - transform.position;
		velocity.Normalize ();
		orthogonal.position = transform.position;
		orthogonal.rotation = Quaternion.LookRotation(Vector3.Cross (velocity, Vector3.up), velocity);
	}
	
	// Update is called once per frame
	void Update () {
		transform.position += velocity * .5f + orthogonal.forward * .05f;
		orthogonal.RotateAround (orthogonal.position, orthogonal.up, .2f);
	}
}
