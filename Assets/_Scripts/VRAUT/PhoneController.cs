using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PhoneController : MonoBehaviour {

	public bool finished, stage1, stage2, stage3, stage4, stage5, active, trigger;
	public int stage2counter, stage3counter, stage4counter, stage5counter;
	public bool attending, pregaming;
	public int drinking, staying_out;
	public float startTime;
	public List<GameObject> messages;
	public GameObject msg1, msg2, msg3, msg4, msg5, msg6, msg7, msg8, msg9, msg10, msg11, msg12, msg13, msg14, msg15, msg16, msg17, msg18;
	public GameObject ellipse;

	public Transform response1, response2, response3, response4, response5, response6, response7, response8, response9, response10;

	public Transform l_hand, r_hand, cam;
	public bool lindrelease, rindrelease;
	public float lind_prevFlex, rind_prevFlex;


	// Use this for initialization
	void Start () {
		finished = false;
		active = false;
		stage1 = false;
		stage2 = false;
		stage2counter = 0;
		stage3 = false;
		stage3counter = 0;
		stage4 = false;
		stage4counter = 0;
		stage5 = false;
		stage5counter = 0;
		lindrelease = true;
		rindrelease = true;
		transform.localScale= new Vector3(0, transform.localScale.y, transform.localScale.z);
		startTime = Time.fixedTime;
	}
	
	// Update is called once per frame
	void Update () {
		if (!trigger && Time.fixedTime > startTime + 8) {
			print (Time.fixedTime);
			trigger = true;
			OVRHapticsClip clip = new OVRHapticsClip (200);
			for (int i = 0; i < 200; i++) {
				clip.WriteSample(255);
			}

			OVRHaptics.LeftChannel.Preempt (clip);
		}
		if (trigger && !active) {
			if (Vector3.Angle (l_hand.right, cam.forward) > 150 && Vector3.Angle (l_hand.right, cam.forward) < 210) {
				active = true;
				stage1 = true;
				Vector3 pos = transform.position;
				gameObject.transform.parent = null;
				gameObject.transform.position = pos;
			}
		}
		if (!active) {
			return;
		}
		if (transform.localScale.x < .00077f && !finished) {
			float newx = transform.localScale.x * 1.05f;
			if (newx == 0) {
				newx = .000005f;
			}
			print ("newx: " + newx);
			if (newx > .00077f) {
				newx = .00077025f;
			}
			transform.localScale = new Vector3(newx, transform.localScale.y, transform.localScale.z);
		}
		lind_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.LIndexTrigger);
		rind_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.RIndexTrigger);
		if (lind_prevFlex < .35) {
			lindrelease = true;
		}
		if (rind_prevFlex < .35) {
			rindrelease = true;
		}
		if (stage1) {
			if (!msg1.GetComponent<Actuator> ().activated) {
				msg1.GetComponent<Actuator> ().activating = true;
				messages.Add (msg1);
			}
			if (lindrelease && lind_prevFlex > .55) {
				lindrelease = false;
				if (Vector3.Angle (response1.position - l_hand.position, l_hand.forward) < 10) {
					stage1 = false;
					attending = false;
					msg1.GetComponent<UIPush> ().direction = new Vector2 (0, 1);
					msg1.GetComponent<UIPush> ().displacement = 8f;
					msg1.GetComponent<UIPush> ().activating = true;
					msg2.GetComponent<Actuator> ().activating = true;
					messages.Add (msg2);
					response1.gameObject.GetComponent<Actuator> ().deactivating = true;
					response2.gameObject.GetComponent<Actuator> ().deactivating = true;
					finished = true;
				} else if (Vector3.Angle (response2.position - l_hand.position, l_hand.forward) < 10) {
					print ("stage1 = false");
					stage1 = false;
					stage2 = true;
					attending = true;
					msg1.GetComponent<UIPush> ().direction = new Vector2 (0, 1);
					msg1.GetComponent<UIPush> ().displacement = 8f;
					msg1.GetComponent<UIPush> ().activating = true;
					msg3.GetComponent<Actuator> ().activating = true;
					messages.Add (msg3);
					response1.gameObject.GetComponent<Actuator> ().deactivating = true;
					response2.gameObject.GetComponent<Actuator> ().deactivating = true;
				}
			}
			if (rindrelease && rind_prevFlex > .55) {
				rindrelease = false;
				if (Vector3.Angle (response1.position - r_hand.position, r_hand.forward) < 10) {
					stage1 = false;
					attending = false;
					msg1.GetComponent<UIPush> ().direction = new Vector2 (0, 1);
					msg1.GetComponent<UIPush> ().displacement = 8f;
					msg1.GetComponent<UIPush> ().activating = true;
					msg2.GetComponent<Actuator> ().activating = true;
					messages.Add (msg2);
					response1.gameObject.GetComponent<Actuator> ().deactivating = true;
					response2.gameObject.GetComponent<Actuator> ().deactivating = true;
					finished = true;
				} else if (Vector3.Angle (response2.position - r_hand.position, r_hand.forward) < 10) {
					stage1 = false;
					stage2 = true;
					attending = true;
					msg1.GetComponent<UIPush> ().direction = new Vector2 (0, 1);
					msg1.GetComponent<UIPush> ().displacement = 8f;
					msg1.GetComponent<UIPush> ().activating = true;
					msg3.GetComponent<Actuator> ().activating = true;
					messages.Add (msg3);
					response1.gameObject.GetComponent<Actuator> ().deactivating = true;
					response2.gameObject.GetComponent<Actuator> ().deactivating = true;
				}
			}
		}
		if (stage2) {
			stage2counter += 1;
			if (!pregaming && stage2counter == 70) {
				ellipse.GetComponent<Actuator> ().activating = true;
				pushMessages (8, 1);
			}
			if (!pregaming && stage2counter == 270) {
				ellipse.GetComponent<Actuator> ().deactivating = true;
				pushMessages (8, -1);
			}
			if (!pregaming && stage2counter == 350) {
				msg4.GetComponent<Actuator> ().activating = true;
				pushMessages (8, 1);
				messages.Add (msg4);
				response3.gameObject.GetComponent<Actuator> ().activating = true;
				response4.gameObject.GetComponent<Actuator> ().activating = true;
			}
			if (!pregaming && stage2counter >= 400) {
				if (lindrelease && lind_prevFlex > .55) {
					lindrelease = false;
					if (Vector3.Angle (response3.position - l_hand.position, l_hand.forward) < 10) {
						msg6.GetComponent<Actuator> ().activating = true;
						pushMessages (8, 1);
						response3.gameObject.GetComponent<Actuator> ().deactivating = true;
						response4.gameObject.GetComponent<Actuator> ().deactivating = true;
						pregaming = true;
						print ("HEY I'M WALKIN HERE");
						messages.Add (msg6);
						stage2counter = 0;
						checkTop ();
					}
					if (Vector3.Angle (response4.position - l_hand.position, l_hand.forward) < 10) {
						msg7.GetComponent<Actuator> ().activating = true;
						stage2 = false;
						stage3 = true;
						pushMessages (8, 1);
						print ("what...?");
						response3.gameObject.GetComponent<Actuator> ().deactivating = true;
						response4.gameObject.GetComponent<Actuator> ().deactivating = true;
						messages.Add (msg7);
						pregaming = false;
						checkTop ();
					}
				}
				if (rindrelease && rind_prevFlex > .55) {
					rindrelease = false;
					if (Vector3.Angle (response3.position - r_hand.position, r_hand.forward) < 10) {
						msg6.GetComponent<Actuator> ().activating = true;
						pushMessages (8, 1);
						response3.gameObject.GetComponent<Actuator> ().deactivating = true;
						response4.gameObject.GetComponent<Actuator> ().deactivating = true;
						pregaming = true;
						messages.Add (msg6);
						stage2counter = 0;
						checkTop ();
					}
					if (Vector3.Angle (response4.position - r_hand.position, r_hand.forward) < 10) {
						msg7.GetComponent<Actuator> ().activating = true;
						stage2 = false;
						stage3 = true;
						pushMessages (8, 1);
						response3.gameObject.GetComponent<Actuator> ().deactivating = true;
						response4.gameObject.GetComponent<Actuator> ().deactivating = true;
						messages.Add (msg7);
						pregaming = false;
						checkTop ();
					}
				}
			}
			if (pregaming) {
				if (stage2counter == 70) {
					pushMessages (8, 1);
					ellipse.GetComponent<Actuator> ().activating = true;
				}
				if (stage2counter == 270) {
					ellipse.GetComponent<Actuator> ().deactivating = true;
					pushMessages (8, -1);
				}
				if (stage2counter == 350) {
					msg8.GetComponent<Actuator> ().activating = true;
					pushMessages (8, 1);
					messages.Add (msg8);
					checkTop ();
				}
				if (stage2counter == 700) {
					msg10.GetComponent<Actuator> ().activating = true;
					pushMessages (8, 1);
					messages.Add (msg10);
					stage2 = false;
					stage3 = true;
					checkTop ();
				}
			}
		}
		if (stage3) {
			stage3counter += 1;
			if (stage3counter == 70) {
				pushMessages (8, 1);
				ellipse.GetComponent<Actuator> ().activating = true;
				checkTop ();
			}
			if (stage3counter == 270) {
				ellipse.GetComponent<Actuator> ().deactivating = true;
				pushMessages (8, -1);
			}
			if (stage3counter == 350) {
				msg9.GetComponent<Actuator> ().activating = true;
				pushMessages (8, 1);
				messages.Add (msg9);
				response5.GetComponent<Actuator> ().activating = true;
				response6.GetComponent<Actuator> ().activating = true;
				response7.GetComponent<Actuator> ().activating = true;
				checkTop ();
			}
			if (stage3counter >= 400) {
				if (lindrelease && lind_prevFlex > .55) {
					lindrelease = false;
					if (Vector3.Angle (response5.position - l_hand.position, l_hand.forward) < 10) {
						msg11.GetComponent<Actuator> ().activating = true;
						drinking = 0;
						pushMessages (8, 1);
						response5.gameObject.GetComponent<Actuator> ().deactivating = true;
						response6.gameObject.GetComponent<Actuator> ().deactivating = true;
						response7.gameObject.GetComponent<Actuator> ().deactivating = true;
						messages.Add (msg11);
						msg11.GetComponent<UIPush> ().activating = false;
						checkTop ();
						stage3 = false;
						stage4 = true;
					}
					if (Vector3.Angle (response6.position - l_hand.position, l_hand.forward) < 10) {
						msg12.GetComponent<Actuator> ().activating = true;
						drinking = 1;
						pushMessages (8, 1);
						response5.gameObject.GetComponent<Actuator> ().deactivating = true;
						response6.gameObject.GetComponent<Actuator> ().deactivating = true;
						response7.gameObject.GetComponent<Actuator> ().deactivating = true;
						messages.Add (msg12);
						msg12.GetComponent<UIPush> ().activating = false;
						checkTop ();
						stage3 = false;
						stage4 = true;
					}
					if (Vector3.Angle (response7.position - l_hand.position, l_hand.forward) < 10) {
						msg13.GetComponent<Actuator> ().activating = true;
						drinking = 2;
						pushMessages (8, 1);
						response5.gameObject.GetComponent<Actuator> ().deactivating = true;
						response6.gameObject.GetComponent<Actuator> ().deactivating = true;
						response7.gameObject.GetComponent<Actuator> ().deactivating = true;
						messages.Add (msg13);
						msg13.GetComponent<UIPush> ().activating = false;
						checkTop ();
						stage3 = false;
						stage4 = true;
					}
				}
				if (rindrelease && rind_prevFlex > .55) {
					rindrelease = false;
					if (Vector3.Angle (response5.position - r_hand.position, r_hand.forward) < 10) {
						msg11.GetComponent<Actuator> ().activating = true;
						drinking = 0;
						pushMessages (8, 1);
						response5.gameObject.GetComponent<Actuator> ().deactivating = true;
						response6.gameObject.GetComponent<Actuator> ().deactivating = true;
						response7.gameObject.GetComponent<Actuator> ().deactivating = true;
						messages.Add (msg11);
						msg11.GetComponent<UIPush> ().activating = false;
						checkTop ();
						stage3 = false;
						stage4 = true;
					}
					if (Vector3.Angle (response6.position - r_hand.position, r_hand.forward) < 10) {
						msg12.GetComponent<Actuator> ().activating = true;
						drinking = 1;
						pushMessages (8, 1);
						response5.gameObject.GetComponent<Actuator> ().deactivating = true;
						response6.gameObject.GetComponent<Actuator> ().deactivating = true;
						response7.gameObject.GetComponent<Actuator> ().deactivating = true;
						messages.Add (msg12);
						msg12.GetComponent<UIPush> ().activating = false;
						checkTop ();
						stage3 = false;
						stage4 = true;
					}
					if (Vector3.Angle (response7.position - r_hand.position, r_hand.forward) < 10) {
						msg13.GetComponent<Actuator> ().activating = true;
						drinking = 2;
						pushMessages (8, 1);
						response5.gameObject.GetComponent<Actuator> ().deactivating = true;
						response6.gameObject.GetComponent<Actuator> ().deactivating = true;
						response7.gameObject.GetComponent<Actuator> ().deactivating = true;
						messages.Add (msg13);
						msg13.GetComponent<UIPush> ().activating = false;
						checkTop ();
						stage3 = false;
						stage4 = true;
					}
				}
			}
		}
		if (stage4) {
			stage4counter += 1;
			if (stage4counter == 70) {
				pushMessages (8, 1);
				ellipse.GetComponent<Actuator> ().activating = true;
				checkTop ();
			}
			if (stage4counter == 270) {
				ellipse.GetComponent<Actuator> ().deactivating = true;
				pushMessages (8, -1);
			}
			if (stage4counter == 350) {
				msg14.GetComponent<Actuator> ().activating = true;
				pushMessages (8, 1);
				messages.Add (msg14);
				response8.GetComponent<Actuator> ().activating = true;
				response9.GetComponent<Actuator> ().activating = true;
				response10.GetComponent<Actuator> ().activating = true;
				checkTop ();
			}
			if (stage4counter >= 400) {
				if (lindrelease && lind_prevFlex > .55) {
					lindrelease = false;
					if (Vector3.Angle (response8.position - l_hand.position, l_hand.forward) < 10) {
						msg15.GetComponent<Actuator> ().activating = true;
						staying_out = 0;
						pushMessages (8, 1);
						response8.gameObject.GetComponent<Actuator> ().deactivating = true;
						response9.gameObject.GetComponent<Actuator> ().deactivating = true;
						response10.gameObject.GetComponent<Actuator> ().deactivating = true;
						messages.Add (msg15);
						msg15.GetComponent<UIPush> ().activating = false;
						checkTop ();
						stage4 = false;
						stage5 = true;
					}
					if (Vector3.Angle (response9.position - l_hand.position, l_hand.forward) < 10) {
						msg16.GetComponent<Actuator> ().activating = true;
						staying_out = 1;
						pushMessages (8, 1);
						response8.gameObject.GetComponent<Actuator> ().deactivating = true;
						response9.gameObject.GetComponent<Actuator> ().deactivating = true;
						response10.gameObject.GetComponent<Actuator> ().deactivating = true;
						messages.Add (msg16);
						msg16.GetComponent<UIPush> ().activating = false;
						checkTop ();
						stage4 = false;
						stage5 = true;
					}
					if (Vector3.Angle (response7.position - l_hand.position, l_hand.forward) < 10) {
						msg13.GetComponent<Actuator> ().activating = true;
						staying_out = 2;
						pushMessages (8, 1);
						response8.gameObject.GetComponent<Actuator> ().deactivating = true;
						response9.gameObject.GetComponent<Actuator> ().deactivating = true;
						response10.gameObject.GetComponent<Actuator> ().deactivating = true;
						messages.Add (msg17);
						msg17.GetComponent<UIPush> ().activating = false;
						checkTop ();
						stage4 = false;
						stage5 = true;
					}
				}
				if (rindrelease && rind_prevFlex > .55) {
					rindrelease = false;
					if (Vector3.Angle (response8.position - r_hand.position, r_hand.forward) < 10) {
						msg15.GetComponent<Actuator> ().activating = true;
						staying_out = 0;
						pushMessages (8, 1);
						response8.gameObject.GetComponent<Actuator> ().deactivating = true;
						response9.gameObject.GetComponent<Actuator> ().deactivating = true;
						response10.gameObject.GetComponent<Actuator> ().deactivating = true;
						messages.Add (msg15);
						msg15.GetComponent<UIPush> ().activating = false;
						checkTop ();
						stage4 = false;
						stage5 = true;
					}
					if (Vector3.Angle (response9.position - r_hand.position, r_hand.forward) < 10) {
						msg16.GetComponent<Actuator> ().activating = true;
						staying_out = 1;
						pushMessages (8, 1);
						response8.gameObject.GetComponent<Actuator> ().deactivating = true;
						response9.gameObject.GetComponent<Actuator> ().deactivating = true;
						response10.gameObject.GetComponent<Actuator> ().deactivating = true;
						messages.Add (msg16);
						msg16.GetComponent<UIPush> ().activating = false;
						checkTop ();
						stage4 = false;
						stage5 = true;
					}
					if (Vector3.Angle (response7.position - r_hand.position, r_hand.forward) < 10) {
						msg13.GetComponent<Actuator> ().activating = true;
						staying_out = 2;
						pushMessages (8, 1);
						response8.gameObject.GetComponent<Actuator> ().deactivating = true;
						response9.gameObject.GetComponent<Actuator> ().deactivating = true;
						response10.gameObject.GetComponent<Actuator> ().deactivating = true;
						messages.Add (msg17);
						msg17.GetComponent<UIPush> ().activating = false;
						checkTop ();
						stage4 = false;
						stage5 = true;
					}
				}
			}
		}
		if (stage5) {
			stage5counter += 1;
			if (stage5counter == 70) {
				pushMessages (8, 1);
				ellipse.GetComponent<Actuator> ().activating = true;
				checkTop ();
			}
			if (stage5counter == 270) {
				ellipse.GetComponent<Actuator> ().deactivating = true;
				pushMessages (8, -1);
			}
			if (stage5counter == 350) {
				msg18.GetComponent<Actuator> ().activating = true;
				pushMessages (8, 1);
				messages.Add (msg18);
				checkTop ();
			}
			if (stage5counter > 600) {
				finished = true;
			}
		}
		if (finished && transform.localScale.x > .00001f) {
			transform.localScale = new Vector3 (transform.localScale.x * .9f, transform.localScale.y, transform.localScale.z);
		} else if (finished) {
			gameObject.SetActive (false);
		}
	}

	void pushMessages(float distance, float up){
		foreach (GameObject o in messages) {
			o.GetComponent<UIPush> ().displacement = distance;
			o.GetComponent<UIPush> ().direction = new Vector2 (0, up);
			o.GetComponent<UIPush> ().activating = true;
		}
	}

	void checkTop() {
		List<GameObject> tr = new List<GameObject> ();
		foreach (GameObject o in messages) {
			if (o.GetComponent<RectTransform> ().localPosition.y >= 80) {
				o.GetComponent<Actuator> ().displacement = 3;
				o.GetComponent<Actuator> ().direction = new Vector2 (0, 1);
				o.GetComponent<Actuator> ().deactivating = true;
				tr.Add (o);
			}
		}
		foreach (GameObject o in tr) {
			messages.Remove (o);
		}
	}
}
