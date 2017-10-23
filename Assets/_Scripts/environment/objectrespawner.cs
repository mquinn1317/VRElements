using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class objectrespawner : MonoBehaviour {

	public GameObject to_respawn;
	private Vector3 pos;
	private Quaternion rot;

	// Use this for initialization
	void Start () {
		pos = to_respawn.transform.position;
		rot = to_respawn.transform.rotation;
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnTriggerEnter(Collider coll){
		if (coll.gameObject.GetInstanceID () == to_respawn.GetInstanceID ()) {
			to_respawn.transform.position = pos;
			to_respawn.transform.rotation = rot;
			if (to_respawn.GetComponent<Rigidbody> ()) {
				Destroy (to_respawn.GetComponent<Rigidbody> ());
			}
		}
	}
}
