using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class turnoff : MonoBehaviour {

	public List<GameObject> objs;

	void Start() {
		foreach (GameObject o in objs) {
			if (o == null) {
				continue;
			}
			o.SetActive (false);
		}
	}

	void OnTriggerEnter(Collider coll){
		if (coll.gameObject.tag == "Player") {
			foreach (GameObject o in objs) {
				if (o == null) {
					continue;
				}
				o.SetActive (true);
			}
		}
	}

	void OnTriggerExit(Collider coll){
		if (coll.gameObject.tag == "Player") {
			foreach (GameObject o in objs) {
				if (o == null) {
					continue;
				}
				o.SetActive (false);
			}
		}
	}
}
