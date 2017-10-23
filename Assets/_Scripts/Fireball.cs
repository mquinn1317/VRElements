using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Fireball : MonoBehaviour {

	public GameObject explosion;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void OnCollisionEnter(Collision coll){
		if (coll.gameObject.tag == "Player") {
			Physics.IgnoreCollision (coll.collider, GetComponent<SphereCollider> ());
		} else {
			Instantiate (explosion, transform.position, Quaternion.identity);
			Destroy (gameObject);
		}
	}

}
