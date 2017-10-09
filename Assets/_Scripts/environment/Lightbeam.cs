using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Lightbeam : MonoBehaviour {

	public bool activating, otherbeam;
	public Lightbeam otherbeamobj;
	public GameObject powercell, lightbridge;
	public Vector3 lightbridgedisplacement;
	public Vector3 curdisplace;
	[Range(80,800)]
	public float speed;

	// Use this for initialization
	void Start () {
		activating = false;
		curdisplace = new Vector3 (0, 0, 0);
	}
	
	// Update is called once per frame
	void Update () {
		if (activating && (!otherbeam || (otherbeam && otherbeamobj.activating))) {
			if (curdisplace.magnitude < lightbridgedisplacement.magnitude) {
				lightbridge.transform.position += lightbridgedisplacement / speed;
				curdisplace += lightbridgedisplacement / speed;
			} else {
				activating = false;
			}
		}
	}

	void OnTriggerEnter(Collider coll){
		if (coll.gameObject.GetInstanceID () == powercell.GetInstanceID ()) {
			activating = true;
			coll.gameObject.GetComponent<Rotator>().enabled = true;
			coll.gameObject.GetComponent<manipulatable> ().enabled = false;
			Destroy (coll.gameObject.GetComponent<Rigidbody> ());
			coll.gameObject.transform.position = transform.position;
		}
	}
}
