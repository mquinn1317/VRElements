using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class swordcontroller : MonoBehaviour {

	public bool active, gripping, left;
	public GameObject hand;
	public float equipcost;
	public GameObject ps;

	// Use this for initialization
	void Start () {
		active = false;
		gripping = false;
		equipcost = 0;
	}
	
	// Update is called once per frame
	void Update () {
		if (equipcost == 0) {
			equipcost = gameObject.GetComponent<iteminfo> ().equipcost;
		}
		if (gameObject.GetComponent<OVRGrabbable> ().isGrabbed) {
			active = true;
			hand = gameObject.GetComponent<OVRGrabbable> ().grabbedBy.gameObject;
			left = hand.GetComponent<OVRGrabber> ().left;
		} else {
			active = false;
		}
		if (active) {
			if (hand.GetComponent<OVRGrabber> ().left) {
				if (OVRInput.Get (OVRInput.RawAxis1D.LHandTrigger) > .55) {
					if (Player.Instance.stamina > equipcost*3 * Time.deltaTime) {
						Player.Instance.stamina -= equipcost*3 * Time.deltaTime;
						gripping = true;
						ps.SetActive (true);
					} else {
						ps.SetActive (false);
						gripping = false;
					}
				} else {
					ps.SetActive (false);
					gripping = false;
				}
			} else {
				if (OVRInput.Get (OVRInput.RawAxis1D.RHandTrigger) > .55) {
					if (Player.Instance.stamina > equipcost*3 * Time.deltaTime) {
						Player.Instance.stamina -= equipcost*3 * Time.deltaTime;
						gripping = true;
						ps.SetActive (true);
					} else {
						gripping = false;
						ps.SetActive (false);
					}
				} else {
					gripping = false;
					ps.SetActive (false);
				}
			}
		}
	}
}
