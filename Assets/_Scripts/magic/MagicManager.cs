using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using cakeslice;
using UnityEngine.UI;

public class MagicManager : MonoBehaviour {

	//	Bending Mode
	public int mode = 0;
	public SkillCallbacks sc;
	public int bendingmode = 1;
	public bool bent = false;
	public Vector3 dir = new Vector3 (0, 0, 0);
	public GameObject colorshift;
	public bool modeshift = false;

	//	Bendable Rocks
	public GameObject rockwall;
	public GameObject spike;
	public GameObject spark;
	public GameObject flames;

	//	Player Transforms
	public Transform l_hand;
	public Transform r_hand;

	// 	Switch-in materials for selected objects
	public Material mat;

	//	Variables for tracking interaction states
	private bool lindexrelease = true;
	private bool lhandrelease = true;
	private bool rindexrelease = true;
	private bool rhandrelease = true;
	private bool abuttonrelease = true;
	private bool bbuttonrelease = true;
	private bool xbuttonrelease = true;
	private bool ybuttonrelease = true;
	public bool leftpointing = false;
	public bool rightpointing = false;

	// 	Punching Variables
	private bool rightpunching = false;
	private int rightpunchcount = 0;
	private float punchdist = 0;
	private bool leftpunching = false;
	private int leftpunchcount = 0;
	private float leftpunchdist = 0;

	//	Swinging Variables
	private bool rightswinging = false;
	private int rightswingcount = 0;
	private float rightswingdist = 0;
	private bool leftswinging = false;
	private int leftswingcount = 0;
	private float leftswingdist = 0;
	private bool spintrigger = false;
	private bool readytopull = false;
	private float pulldist = 0;

	// 	Spike variables
	public int leftspikecount = 40;
	public int rightspikecount = 40;

	//	Most recent positions/directions of hands
	public Vector3 rightlastposition;
	public Vector3 rightlastdirection;
	public Vector3 leftlastposition;
	public Vector3 leftlastdirection;

	//	Assets for pointers
	public GameObject lefthit = null;
	public GameObject righthit = null;
	private GameObject leftpointerline;
	private GameObject rightpointerline;
	public Vector3 rrcpoint = new Vector3 (0, 0, 0);
	public Vector3 lrcpoint = new Vector3 (0, 0, 0);
	public GameObject piprefab;
	private GameObject pointerindicator;
	private LineRenderer leftpointerlinerenderer;
	private LineRenderer rightpointerlinerenderer;

	public bool selecting = false;
	public bool manipulating = false;
	public int manipcount = 100;
	public bool throwing = false;
	private Vector3 curl;
	private Vector3 curr;

	//	Selected rocks
	public List<GameObject> selected;
	public List<GameObject> toremove;

	//	Indicator light cooldown
	private int lcountdown = 4;
	private int rcountdown = 4;

	// 	Oculus Touch button states
	public float lind_prevFlex;
	public float lhand_prevFlex;
	public float rind_prevFlex;
	public float rhand_prevFlex;
	public Vector2 r2djoy_prevFlex;
	public Vector2 l2djoy_prevFlex;
	public bool lbutton_prevFlex;
	public bool ybutton_prevFlex;
	public bool rbutton_prevFlex;
	public bool bbutton_prevFlex;
	public bool ljoy_prevFlex;
	public bool rjoy_prevFlex;
	public bool ljoyrelease;
	public bool rjoyrelease;

	// 	Targeting
	public GameObject targetcone;
	public GameObject target;
	public GameObject maniplight;

	//	Lightning;
	public bool splitting, aligned, final;
	public float splitcount = 0f;

	// Skill Assignments
	public int leftswing = 0;
	public int rightswing = 0;
	public int lightning = 0;
	public int manipulation = 0;

	public Dictionary<string, int> mapping1, mapping2, mapping3;

	// Use this for initialization
	void Start () {
		mapping1 = new Dictionary<string,int> ();
		mapping2 = new Dictionary<string,int> ();
		mapping3 = new Dictionary<string,int> ();
		mapping1.Add ("leftswing", 0);
		mapping1.Add ("rightswing", 0);
		mapping1.Add ("lightning", 0);
		mapping1.Add ("manipulation", 0);
		mapping2.Add ("leftswing", 0);
		mapping2.Add ("rightswing", 0);
		mapping2.Add ("lightning", 1);
		mapping2.Add ("manipulation", 0);
		mapping3.Add ("leftswing", 0);
		mapping3.Add ("rightswing", 0);
		mapping3.Add ("lightning", 0);
		mapping3.Add ("manipulation", 0);
		splitting = false;
		aligned = false;
		final = false;
		sc = GameObject.FindGameObjectWithTag ("skillcallbacks").GetComponent<SkillCallbacks> ();
		rightlastposition = r_hand.position - Player.Instance.transform.position;
		rightlastdirection = r_hand.forward;
		leftlastposition = l_hand.position - Player.Instance.transform.position;
		leftlastdirection = l_hand.forward;
		leftpointerline = new GameObject ();
		leftpointerline.transform.position = l_hand.position;
		leftpointerline.AddComponent<LineRenderer> ();
		rightpointerline = new GameObject ();
		rightpointerline.transform.position = r_hand.position;
		rightpointerline.AddComponent<LineRenderer> ();
		leftpointerlinerenderer = leftpointerline.GetComponent<LineRenderer> ();
		leftpointerlinerenderer.material = mat;
		leftpointerlinerenderer.startWidth = .02f;
		leftpointerlinerenderer.SetColors (new Color (250, 255, 10), new Color (250, 255, 10));
		rightpointerlinerenderer = rightpointerline.GetComponent<LineRenderer> ();
		rightpointerlinerenderer.material = mat;
		rightpointerlinerenderer.startWidth = .02f;
		rightpointerlinerenderer.SetColors (new Color (250, 255, 10), new Color (250, 255, 10));
		selected = new List<GameObject> ();
		toremove = new List<GameObject> ();
		targetcone = GameObject.FindGameObjectWithTag ("targetcone");
		target = targetcone.GetComponent<targetcone> ().nearestenemy;
	}

	// Update is called once per frame
	void Update () {
		//		Acquire Oculus Touch info
		lind_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.LIndexTrigger);
		lhand_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.LHandTrigger);
		rind_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.RIndexTrigger);
		rhand_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.RHandTrigger);
		ljoy_prevFlex = OVRInput.Get (OVRInput.RawButton.LThumbstick);
		rjoy_prevFlex = OVRInput.Get (OVRInput.RawButton.RThumbstick);
		lbutton_prevFlex = OVRInput.Get (OVRInput.RawButton.X);
		ybutton_prevFlex = OVRInput.Get (OVRInput.RawButton.Y);
		rbutton_prevFlex = OVRInput.Get (OVRInput.RawButton.A);
		bbutton_prevFlex = OVRInput.Get (OVRInput.RawButton.B);
		r2djoy_prevFlex = OVRInput.Get (OVRInput.RawAxis2D.RThumbstick);
		l2djoy_prevFlex = OVRInput.Get (OVRInput.RawAxis2D.LThumbstick);

		//		Targeting
		target = targetcone.GetComponent<targetcone> ().nearestenemy;

		//		Baseline raycasts
		RaycastHit lrc;
		RaycastHit rrc;
		Physics.Raycast (l_hand.position, l_hand.forward, out lrc);
		Physics.Raycast (r_hand.position, r_hand.forward, out rrc);

		if (lind_prevFlex > .55f) {
			Player.Instance.stamina -= Time.deltaTime * 22f * l2djoy_prevFlex.magnitude;
		}
		if (ybuttonrelease && ybutton_prevFlex) {
			ybuttonrelease = false;
			modeshift = true;
		}
		if (modeshift) {
			print (r2djoy_prevFlex.x);
		}
		if (modeshift && r2djoy_prevFlex.x > .5f) {
			modeshift = false;
			mode += 1;
			if (mode > 2) {
				mode = 2;
			}
		}
		if (modeshift && r2djoy_prevFlex.x < -.5f) {
			modeshift = false;
			mode -= 1;
			if (mode < 0) {
				mode = 0;
			}
		}

		if (mode == 0) {
			leftswing = mapping1 ["leftswing"];
			rightswing = mapping1 ["rightswing"];
			lightning = mapping1 ["lightning"];
			manipulation = mapping1 ["manipulation"];
		} else if (mode == 1) {
			leftswing = mapping2 ["leftswing"];
			rightswing = mapping2 ["rightswing"];
			lightning = mapping2 ["lightning"];
			manipulation = mapping2 ["manipulation"];
		} else if (mode == 2) {
			leftswing = mapping3 ["leftswing"];
			rightswing = mapping3 ["rightswing"];
			lightning = mapping3 ["lightning"];
			manipulation = mapping3 ["manipulation"];
		}

		//		Turn on/off pointers
		if (lbutton_prevFlex && xbuttonrelease) {
			leftpointing = !leftpointing;
			rightpointing = !rightpointing;
			xbuttonrelease = false;
		} 
		if (r_hand.gameObject.GetComponent<OVRGrabber> ().grabbedObject != null) {
			rightpointing = false;
		}
		if (l_hand.gameObject.GetComponent<OVRGrabber> ().grabbedObject != null) {
			leftpointing = false;
		}
		if (!lbutton_prevFlex) {
			xbuttonrelease = true;
		}
		if (!rbutton_prevFlex) {
			abuttonrelease = true;
		}
		if (!bbutton_prevFlex) {
			bbuttonrelease = true;
		}
		if (!ybutton_prevFlex) {
			ybuttonrelease = true;
			modeshift = false;
		}
		if (!ljoy_prevFlex) {
			ljoyrelease = true;
		}
		if (!rjoy_prevFlex) {
			rjoyrelease = true;
		}

//		Left pointer's indication generator
		if (leftpointing) {
			leftpointerline.SetActive (true);
			leftpointerlinerenderer.SetPosition (0, l_hand.position);
			if (Physics.Raycast (l_hand.position, l_hand.forward, out lrc)) {
				lefthit = lrc.collider.gameObject;
				lrcpoint = lrc.point;
				lcountdown -= 1;
				if (lcountdown <= 0) {
					Object to_dest = Instantiate (piprefab, lrc.point, Quaternion.identity);
					lcountdown = 4;
					Destroy (to_dest, .1f);
				}
				leftpointerlinerenderer.SetPosition (1, lrc.point);
			} else {
				lefthit = null;
				leftpointerlinerenderer.SetPosition (1, l_hand.position + l_hand.forward * 200);
			}
		} else {
			leftpointerline.SetActive (false);
		}

		//		Right pointer's indication generator
		if (rightpointing) {
			rightpointerline.SetActive (true);
			rightpointerlinerenderer.SetPosition (0, r_hand.position);
			if (Physics.Raycast (r_hand.position, r_hand.forward, out rrc)) {
				righthit = rrc.collider.gameObject;
				rrcpoint = rrc.point;
				rcountdown -= 1;
				if (rcountdown <= 0) {
					Object to_dest = Instantiate (piprefab, rrc.point, Quaternion.identity);
					rcountdown = 4;
					Destroy (to_dest, .1f);
				}
				rightpointerlinerenderer.SetPosition (1, rrc.point);
			} else {
				righthit = null;
				rightpointerlinerenderer.SetPosition (1, r_hand.position + r_hand.forward * 200);
			}
		} else {
			rightpointerline.SetActive (false);
		}

		//		Spike throwing
		if (Player.Instance.mana > 15 && !manipulating && target && leftpointing && lind_prevFlex > .55 && Vector3.Angle (target.transform.position - l_hand.position, l_hand.position - Player.Instance.transform.position - leftlastposition) < 25 && leftspikecount <= 0) {
			if (leftswing == 0) {
				sc.SpikeThrow (true);
			}
		}

		if (Player.Instance.mana > 15 && !manipulating && target && rightpointing && rind_prevFlex > .55 && Vector3.Angle (target.transform.position - r_hand.position, r_hand.position - Player.Instance.transform.position - rightlastposition) < 25 && rightspikecount <= 0) {
			if (rightswing == 0) {
				sc.SpikeThrow (false);
			}
		}

		if (leftpointing && lind_prevFlex > .55) {
			sc.Tractor (true);
		}

		if (rightpointing && rind_prevFlex > .55) {
			sc.Tractor (false);
		}

		if (leftspikecount > 0) {
			leftspikecount -= 1;
		}
		if (rightspikecount > 0) {
			rightspikecount -= 1;
		}

		if (target && Player.Instance.mana > 15 && !manipulating && !rightpointing && !leftpointing && lind_prevFlex > .55 && rind_prevFlex > .55 && rhandrelease && lhandrelease) {
			lindexrelease = false;
			rindexrelease = false;
			if (!splitting) {
				splitting = true;
				splitcount = 0;
			} else if (!final && Vector3.Angle (r_hand.position - Player.Instance.transform.position - rightlastposition, r_hand.forward) > 30f && Vector3.Angle (r_hand.position - Player.Instance.transform.position - rightlastposition, r_hand.forward) < 150f && Vector3.Angle (l_hand.position - Player.Instance.transform.position - leftlastposition, l_hand.forward) > 30f && Vector3.Angle (l_hand.position - Player.Instance.transform.position - leftlastposition, l_hand.forward) < 150f) {
				splitcount += (r_hand.position - Player.Instance.transform.position - rightlastposition).magnitude + (l_hand.position - Player.Instance.transform.position - leftlastposition).magnitude;
				colorshift.GetComponent<Image> ().color = new Color (1f, 0, splitcount * 2f);
				if (splitcount > .5f && Vector3.Angle (r_hand.forward, l_hand.forward) > 160f) {
					aligned = true;
				}
			} else if (splitting && !aligned) {
				splitcount = 0;
				splitting = false;
				final = false;
				aligned = false;
				colorshift.GetComponent<Image> ().color = new Color (1f, .8f, 0);
			}
			if (aligned && (r_hand.position - l_hand.position).magnitude < .3f) {
				final = true;
				colorshift.GetComponent<Image> ().color = new Color (0,0,1f);
			}
			if (final && (r_hand.position - l_hand.position).magnitude > 1.7f && (Vector3.Angle (r_hand.forward, target.transform.position - r_hand.position) < 45 || Vector3.Angle (l_hand.forward, target.transform.position - l_hand.position) < 45)) {
				if (lightning == 0) {
					sc.LightningBolt ();
				} else if (lightning == 1) {
					sc.FlameBlast ();
				}
				final = false;
				splitcount = 0;
				aligned = false;
				splitting = false;
				Player.Instance.mana -= 15;
				colorshift.GetComponent<Image> ().color = new Color (1f, .8f, 0);
			}

		} else {
			splitting = false;
			final = false;
			aligned = false;
			splitcount = 0;
			colorshift.GetComponent<Image> ().color = new Color (1f, .8f, 0);
		}



		//		Left hand trigger
		if (leftpointing && ljoy_prevFlex && ljoyrelease) {
			if (manipulation == 0) {
				sc.EarthTargeting (true);
			}
		}
		if (lind_prevFlex < .35) {
			lindexrelease = true;
		}

		//		Right hand trigger
		if (rightpointing && rjoy_prevFlex && rjoyrelease) {
			if (manipulation == 0) {
				sc.EarthTargeting (false);
			}
		}
		if (rind_prevFlex < .35) {
			rindexrelease = true;
		}

		//		Manipulation mechanics
		if (selected.Count > 0 && selected [0] == null) {
			manipulating = false;
		}
		if (manipcount > 0) {
			manipcount -= 1;
		}

		if (manipulating && !throwing && rhand_prevFlex > .55 && lhand_prevFlex > .55 && lind_prevFlex < .35 && rind_prevFlex < .35) {
			if (manipulation == 0) {
				sc.EarthManip ();
			}
		}
		if (bent && lhand_prevFlex < .35 && rhand_prevFlex < .35) {
			if (manipulation == 0) {
				sc.EarthRelease ();
			}
		}

		if (mode == 1 && rhand_prevFlex > .55 && lhand_prevFlex > .55
			&& Vector3.Angle (r_hand.position - Player.Instance.transform.position - rightlastposition, rightlastdirection) > 30
			&& Vector3.Angle (l_hand.position - Player.Instance.transform.position - leftlastposition, leftlastdirection) > 30) {
			rightswinging = true;
			leftswinging = true;
			rightswingdist += (r_hand.position - Player.Instance.transform.position - rightlastposition).magnitude;
			leftswingdist += (l_hand.position - Player.Instance.transform.position - leftlastposition).magnitude;
			if (rightswingdist > .45f || leftswingdist > .45f) {
				readytopull = true;
			}
			if (readytopull && Vector3.Angle (r_hand.position - Player.Instance.transform.position - rightlastposition, rightlastdirection) > 150) {
				pulldist += (r_hand.position - Player.Instance.transform.position - rightlastposition).magnitude;
				if (pulldist > .1f) {
					spintrigger = true;
					pulldist = 0;
					leftswingdist = 0;
					rightswingdist = 0;
					readytopull = false;
					rightswinging = false;
					leftswinging = false;
				}
			}
		} else {
			leftswinging = false;
			rightswinging = false;
			leftswingdist = 0;
			rightswingdist = 0;
			pulldist = 0;
			readytopull = false;
		}



		//		Right hand punch
		if (!manipulating && selecting && rhand_prevFlex > .55 && Vector3.Angle (r_hand.position - Player.Instance.transform.position - rightlastposition, rightlastdirection) < 30) {
			rightpunching = true;
			punchdist += (r_hand.position - Player.Instance.transform.position - rightlastposition).magnitude;
		} else {
			rightpunching = false;
			rightpunchcount = 0;
			punchdist = 0;
		}
		if (rightpunching) {
			rightpunchcount += 1;
			print ("punchdist: " + punchdist);
			if (punchdist >= .24f) {
				if (mode == 0) {
					foreach (GameObject o in selected) {
						if (o == null) {
							toremove.Add (o);
							continue;
						}
						o.GetComponent<hedronbehavior> ().fire = true;
					}
					foreach (GameObject o in toremove) {
						selected.Remove (o);
					}
					toremove = new List<GameObject> ();
					selecting = false;
					rightpunching = false;
					rightpunchcount = 0;
					punchdist = 0;
				} else if (mode == 1) {
					rightpunchcount += 0;
				}
			}
		}
		rightlastposition = r_hand.position - Player.Instance.transform.position;
		rightlastdirection = r_hand.forward;

		//		Left hand punch
		if (!manipulating && selecting && lhand_prevFlex > .55 && Vector3.Angle (l_hand.position - Player.Instance.transform.position - leftlastposition, leftlastdirection) < 30) {
			leftpunching = true;
			leftpunchdist += (l_hand.position - Player.Instance.transform.position - leftlastposition).magnitude;
		} else {
			leftpunching = false;
			leftpunchcount = 0;
			leftpunchdist = 0;
		}
		if (leftpunching) {
			leftpunchcount += 1;
			print ("leftpunchdist: " + leftpunchdist);
			if (leftpunchdist >= .24f) {
				if (mode == 0) {
					foreach (GameObject o in selected) {
						if (o == null) {
							toremove.Add (o);
							continue;
						}
						o.GetComponent<hedronbehavior> ().fire = true;
					}
					foreach (GameObject o in toremove) {
						selected.Remove (o);
					}
					toremove = new List<GameObject> ();
					selecting = false;
					leftpunching = false;
					leftpunchcount = 0;
					leftpunchdist = 0;
				} else if (mode == 1) {
					leftpunchcount += 0;
				}
			}
		}
		leftlastposition = l_hand.position - Player.Instance.transform.position;
		leftlastdirection = l_hand.forward;

	}
}
