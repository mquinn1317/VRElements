using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class check : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnCollisionEnter(Collision coll){
		if (coll.gameObject.tag == "spike") {
			print ("GOD FUCKIN DAMN WHY AREN'T YOU WORKING");
		} else {
			print (coll.gameObject.tag);
		}
	}

}
