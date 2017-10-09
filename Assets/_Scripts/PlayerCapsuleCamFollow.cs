using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerCapsuleCamFollow : MonoBehaviour {

	public Transform cam;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		transform.position = cam.position + new Vector3 (0, -.7f, 0);
		Vector3 newforward = new Vector3 (transform.forward.x, 0, transform.forward.z);
		transform.rotation = Quaternion.LookRotation (newforward, new Vector3 (0, 1, 0));
	}
}
