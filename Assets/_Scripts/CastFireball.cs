using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CastFireball : MonoBehaviour {

	public GameObject fireball;
	public OVRInput.Controller m_controller;
	private bool release = true;
	private GameObject new_fireball;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		float m_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.LIndexTrigger);
		if (m_prevFlex > .55f && release) {
			print ("NEW FIREBALL");
			new_fireball = Instantiate (fireball, transform.position, Quaternion.identity);
			new_fireball.transform.parent = transform;
			release = false;
		}
		if (m_prevFlex < .35f) {
			if (new_fireball) {
				new_fireball.transform.parent = null;
				new_fireball.GetComponent<Rigidbody> ().velocity = transform.forward*20;
				new_fireball = null;
			}
			release = true;
		}
	}
}
