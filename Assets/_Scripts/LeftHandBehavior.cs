using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LeftHandBehavior : MonoBehaviour {

	public bool closing = false;
	public bool lhandrelease, lindrelease;
	public Animator lhandcontroller;
	AnimationClip ac;

	public OVRGrabber l_hand;

	public float lhand_prevFlex, lind_prevFlex;
	// Use this for initialization
	void Start () {
		l_hand = GameObject.FindGameObjectWithTag ("lhandgrabber").GetComponent<OVRGrabber>();

		lhandrelease = true;
		lindrelease = true;
		ac = lhandcontroller.runtimeAnimatorController.animationClips [0];

		AnimationEvent evt = new AnimationEvent ();
		evt.functionName = "FreezeAfterClose";
		evt.time = .5f;
		ac.AddEvent (evt);

		evt = new AnimationEvent ();
		evt.functionName = "FreezeAfterOpen";
		evt.time = .02f;
		ac.AddEvent (evt);
	}
	
	// Update is called once per frame
	void Update () {
		lhand_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.LHandTrigger);
		lind_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.LIndexTrigger);

		if (lhand_prevFlex > .35 && !closing) {
			closing = true;
			lhandcontroller.SetFloat ("HandCloseSpeed", 1.0f);
		}

		if (lhand_prevFlex < .35 && lind_prevFlex < .35 && closing && l_hand.grabbedObject == null) {
			closing = false;
			lhandcontroller.SetFloat ("HandCloseSpeed", -1.0f);
		}

	}

	void FreezeAfterClose() {
		print("FreezeAfterClose()");
		if (closing) {
			lhandcontroller.SetFloat ("HandCloseSpeed", 0);
		}
	}

	void FreezeAfterOpen() {
		if (!closing) {
			lhandcontroller.SetFloat ("HandCloseSpeed", 0);
		}
	}

}
