using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class respawner : MonoBehaviour {



	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnTriggerEnter(Collider coll){
		if (coll.gameObject.tag == "Player") {
			SceneManager.LoadScene ("Bending");
		}
		if (coll.gameObject.tag == "respawnconstraint" || coll.gameObject.tag == "Untagged") {
			Physics.IgnoreCollision (coll, gameObject.GetComponent<BoxCollider> ());
		}
	}
}
