using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class glider_manager : MonoBehaviour {

	public Transform l_hand, r_hand, player;

	public bool rhandrelease, rindrelease, lhandrelease, lindrelease;
	public float rhand_prevFlex, rind_prevFlex, lhand_prevFlex, lind_prevFlex;

	// Use this for initialization
	void Start () {
		rhandrelease = true;
		lhandrelease = true;
		rindrelease = true;
		lindrelease = true;
		player = GameObject.FindGameObjectWithTag ("Player").transform;
		l_hand = GameObject.FindGameObjectWithTag ("lhandgrabber").transform;
		r_hand = GameObject.FindGameObjectWithTag ("rhandgrabber").transform;
	}
	
	// Update is called once per frame
	void Update () {
		rhand_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.RHandTrigger);
		rind_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.RIndexTrigger);
		if (rhand_prevFlex < .35) {
			rhandrelease = true;
		} if (rind_prevFlex < .35) {
			rindrelease = true;
		}
		lhand_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.LHandTrigger);
		lind_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.LIndexTrigger);
		if (lhand_prevFlex < .35) {
			lhandrelease = true;
		} if (lind_prevFlex < .35) {
			lindrelease = true;
		}
	}
}
