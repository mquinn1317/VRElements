using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class hedronbehavior : MonoBehaviour {

	private bool rising;
	private float remaining;
	public Vector3 forward;
	public bool fire;
	public GameObject targetcone;
	public GameObject target;

	// Use this for initialization
	void Start () {
		rising = true;
		fire = false;
		remaining = 2.5f;
		transform.rotation *= Quaternion.Euler (-90f, 0, 0);
		targetcone = GameObject.FindGameObjectWithTag ("targetcone");
		target = targetcone.GetComponent<targetcone> ().nearestenemy;
	}
	
	// Update is called once per frame
	void Update () {
		if (target != null && Quaternion.Angle(Quaternion.LookRotation(forward), Quaternion.LookRotation(target.transform.position-transform.position)) > 5) {
			forward = target.transform.position - transform.position;
			forward.Normalize ();
		}
		if (rising) {
			transform.position += new Vector3 (0, .1f, 0);
			remaining -= .1f;
			if (remaining <= 0) {
				rising = false;
			}
			if (remaining <= 1.8) {
				transform.rotation = Quaternion.RotateTowards (transform.rotation, Quaternion.LookRotation (forward), 5);
			}
		}
		if (Quaternion.Angle (Quaternion.LookRotation(transform.forward, transform.up), Quaternion.LookRotation (forward, transform.up)) > 3) {
			print ("ADJUSTING: " + Quaternion.Angle (Quaternion.LookRotation(transform.forward, transform.up), Quaternion.LookRotation (forward, transform.up)));
			transform.rotation = Quaternion.RotateTowards (transform.rotation, Quaternion.LookRotation (forward), 2);
		}
		if (fire) {
			//print ("firing");
			transform.position += forward*.15f;
		}
	}

	void OnTriggerEnter(Collider coll){
		if (coll.gameObject.tag == "enemy") {
			coll.gameObject.GetComponent<EnemyController> ().health -= 10;
			Destroy (gameObject);
		}
	}
}
