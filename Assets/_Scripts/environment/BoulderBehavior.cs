using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoulderBehavior : MonoBehaviour {

	public GameObject Player;
	public PlayerManager pm;
	public bool fire;
	public Vector3 trajectory;
	public float boulderlifetime;

	// Use this for initialization
	void Start () {
		boulderlifetime = 0;
		fire = false;
		Player = GameObject.FindGameObjectWithTag ("Player");
		pm = GameObject.FindGameObjectWithTag ("playermanager").GetComponent<PlayerManager> ();
	}
	
	// Update is called once per frame
	void Update () {
		boulderlifetime += Time.deltaTime;
		if (!fire) {
			trajectory = Player.transform.position - transform.position;
			trajectory.Normalize ();
		} else {
			if (boulderlifetime < .3f) {
				transform.position += trajectory * 48f * Time.deltaTime;
			} else {
				if (GetComponent<Rigidbody> () == null) {
					gameObject.AddComponent<Rigidbody> ();
				}
				GetComponent<Rigidbody> ().useGravity = true;
				GetComponent<Rigidbody> ().velocity = trajectory*50f;
			}
		}
	}

	void OnCollisionEnter(Collision coll){
		if (coll.gameObject.tag == "Player") {
			pm.health -= 70;
			Destroy (gameObject);
		}
	}
}
