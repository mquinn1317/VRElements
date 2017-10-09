using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class selectorbehavior : MonoBehaviour {

	public GameObject targetcone;
	public GameObject target;
	public Transform cam;

	// Use this for initialization
	void Start () {
		targetcone = GameObject.FindGameObjectWithTag ("targetcone");
		target = targetcone.GetComponent<targetcone> ().nearestenemy;
	}
	
	// Update is called once per frame
	void Update () {
		target = targetcone.GetComponent<targetcone> ().nearestenemy;
		if (!target) {
			transform.position = cam.position + cam.forward * 8;
			return;
		}
		Vector3 to_target = target.transform.position - cam.position;
		to_target.Normalize ();
		to_target = to_target;
		transform.position = cam.position + to_target*8;
	}
}
