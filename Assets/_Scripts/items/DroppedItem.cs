using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DroppedItem : MonoBehaviour {

	public Vector3 pos;
	bool grabbed = false;

	// Use this for initialization
	void Start () {
		pos = transform.position;
		if (gameObject.GetComponent<Rigidbody> ()) {
			gameObject.GetComponent<Rigidbody> ().useGravity = false;
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (!gameObject.GetComponent<OVRGrabbable> ().isGrabbed) {
			transform.RotateAround (transform.position, new Vector3 (0, 1, 0), 1f);
			if (grabbed) {
				pos = gameObject.transform.position;
			}
			grabbed = false;
			transform.position = pos;
		} else {
			grabbed = true;
			if (!GetComponent<iteminfo> ()) {
				gameObject.AddComponent<iteminfo> ();
			}
		}
	}
}
