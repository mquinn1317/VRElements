using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class hedronbehavior2 : MonoBehaviour {

	public bool rising = true;
	public bool spinning = false;
	public float spinspeed = 0f;
	public bool fire = false;
	public Vector3 forward;
	private float remaining;
	public GameObject targetcone;
	public GameObject target;

	// Use this for initialization
	void Start () {
		transform.rotation *= Quaternion.Euler (-90f, 0, 0);
		remaining = 2f;
		targetcone = GameObject.FindGameObjectWithTag ("targetcone");
	}
	
	// Update is called once per frame
	void Update () {
		if (rising) {
			transform.position += new Vector3 (0, .1f, 0);
			remaining -= .1f;
			if (remaining <= 0) {
				rising = false;
			}
		}
		if (spinning) {
			if (spinspeed < 1.3f) {
				spinspeed += .006f;
			}
			transform.RotateAround (transform.parent.position, new Vector3 (0, 1f, 0), -spinspeed);
		}
	}

	void OnTriggerEnter(Collider coll){
		if (coll.gameObject.tag == "enemy") {
			coll.gameObject.GetComponent<EnemyController> ().health -= 10;
			Destroy (gameObject);
		}
	}
}
