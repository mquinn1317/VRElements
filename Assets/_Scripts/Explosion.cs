using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Explosion : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void OnCollisionEnter(Collision coll){
		if (coll.gameObject.tag == "enemy") {
			coll.gameObject.GetComponent<EnemyController> ().health -= 20;
		}
	}

}
