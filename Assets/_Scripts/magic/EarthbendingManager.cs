using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using cakeslice;
using UnityEngine.UI;

public class EarthbendingManager : MonoBehaviour {

//	Bending Mode
	public int mode = 0;
	public int bendingmode = 1;
	public bool bent = false;
	public Vector3 dir = new Vector3 (0, 0, 0);
	public GameObject colorshift;

//	Bendable Rocks
	public GameObject rockwall;
	public GameObject hedron;
	public GameObject spike;
	public GameObject spark;

//	Player Transforms
	public Transform Player;
	private PlayerManager pm;
	public Transform l_hand;
	public Transform r_hand;

// 	Switch-in materials for selected objects
	public Material mat;
	public Material selectedmat;
	public Material regularmat;

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
	private int leftspikecount = 40;
	private int rightspikecount = 40;

//	Most recent positions/directions of hands
	public Vector3 rightlastposition;
	public Vector3 rightlastdirection;
	public Vector3 leftlastposition;
	public Vector3 leftlastdirection;

//	Assets for pointers
	private GameObject lefthit = null;
	private GameObject righthit = null;
	private GameObject leftpointerline;
	private GameObject rightpointerline;
	public GameObject piprefab;
	private GameObject pointerindicator;
	private LineRenderer leftpointerlinerenderer;
	private LineRenderer rightpointerlinerenderer;

	public bool selecting = false;
	public bool manipulating = false;
	private int manipcount = 100;
	private bool throwing = false;
	private Vector3 curl;
	private Vector3 curr;

//	Selected rocks
	public List<GameObject> selected;
	private List<GameObject> activeRocks;
	private List<GameObject> toremove;
	private List<GameObject> hedrons_two;
	private GameObject hedrongroup;

//	Indicator light cooldown
	private int lcountdown = 4;
	private int rcountdown = 4;

// 	Oculus Touch button states
	float lind_prevFlex;
	float lhand_prevFlex;
	float rind_prevFlex;
	float rhand_prevFlex;
	Vector2 r2djoy_prevFlex;
	Vector2 l2djoy_prevFlex;
	bool lbutton_prevFlex;
	bool ybutton_prevFlex;
	bool rbutton_prevFlex;
	bool bbutton_prevFlex;
	bool ljoy_prevFlex;
	bool rjoy_prevFlex;
	bool ljoyrelease;
	bool rjoyrelease;

// 	Targeting
	public GameObject targetcone;
	public GameObject target;
	public GameObject maniplight;

//	Lightning;
	public bool splitting, aligned, final;
	public float splitcount = 0f;

	// Use this for initialization
	void Start () {
		splitting = false;
		aligned = false;
		final = false;
		pm = GameObject.FindGameObjectWithTag ("playermanager").GetComponent<PlayerManager> ();
		rightlastposition = r_hand.position-Player.position;
		rightlastdirection = r_hand.forward;
		leftlastposition = l_hand.position - Player.position;
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
		activeRocks = new List<GameObject> ();
		hedrons_two = new List<GameObject> ();
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
		r2djoy_prevFlex = OVRInput.Get (OVRInput.RawAxis2D.RTouchpad);
		l2djoy_prevFlex = OVRInput.Get (OVRInput.RawAxis2D.LTouchpad);

//		Targeting
		target = targetcone.GetComponent<targetcone> ().nearestenemy;

//		Baseline raycasts
		RaycastHit lrc;
		RaycastHit rrc;
		Vector3 rrcpoint = new Vector3 (0, 0, 0);
		Vector3 lrcpoint = new Vector3 (0, 0, 0);

//		Turn on/off pointers
		if (lbutton_prevFlex && xbuttonrelease && mode == 0) {
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
		if (bbutton_prevFlex && bbuttonrelease) {
			mode = 0;
			bbuttonrelease = false;
		}
		if (ybutton_prevFlex && ybuttonrelease) {
			mode = 0;
			ybuttonrelease = false;
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
		if (pm.mana > 15 && !manipulating && target && leftpointing && lind_prevFlex > .55 && Vector3.Angle (target.transform.position - l_hand.position, l_hand.position - Player.position - leftlastposition) < 25 && leftspikecount <= 0) {
			//Vector3 spikeloc = l_hand.position + l_hand.forward * 2 - .2f * (target.transform.position - l_hand.position);
			//GameObject newspike = Instantiate (spike, spikeloc, Quaternion.LookRotation (target.transform.position - l_hand.position, transform.up));
			//newspike.GetComponent<spikebehavior> ().fire = true;
			GameObject newspark = Instantiate (spark, Player.position, Quaternion.LookRotation(target.transform.position-Player.position, Player.up));
			//newspark.transform.rotation *= Quaternion.Euler (0, -90, 0);
			leftspikecount = 17;
			pm.mana -= 15;
			Destroy (newspark, .3f);
		}

		if (pm.mana > 15 && !manipulating && target && rightpointing && rind_prevFlex > .55 && Vector3.Angle (target.transform.position - r_hand.position, r_hand.position - Player.position - rightlastposition) < 25 && rightspikecount <= 0) {
			Vector3 spikeloc = r_hand.position + r_hand.forward * 2 - .2f * (target.transform.position - r_hand.position);
			GameObject newspike = Instantiate (spike, spikeloc, Quaternion.LookRotation (target.transform.position - r_hand.position, transform.up));
			newspike.GetComponent<spikebehavior> ().fire = true;
			rightspikecount = 17;
			pm.mana -= 15;
		}

		if (leftspikecount > 0) {
			leftspikecount -= 1;
		}
		if (rightspikecount > 0) {
			rightspikecount -= 1;
		}

		if (target && pm.mana > 15 && !manipulating && !rightpointing && !leftpointing && lind_prevFlex > .55 && rind_prevFlex > .55 && rhandrelease && lhandrelease) {
			lindexrelease = false;
			rindexrelease = false;
			if (!splitting) {
				print ("splitting");
				splitting = true;
				splitcount = 0;
			} else if (!final && Vector3.Angle (r_hand.position - Player.position - rightlastposition, r_hand.forward) > 30f && Vector3.Angle (r_hand.position - Player.position - rightlastposition, r_hand.forward) < 150f && Vector3.Angle (l_hand.position - Player.position - leftlastposition, l_hand.forward) > 30f && Vector3.Angle (l_hand.position - Player.position - leftlastposition, l_hand.forward) < 150f) {
				splitcount += (r_hand.position - Player.position - rightlastposition).magnitude + (l_hand.position - Player.position - leftlastposition).magnitude;
				colorshift.GetComponent<Image> ().color = new Color (1f, 0, splitcount * 2f);
				print ("splitcount : " + splitcount);
				if (splitcount > .5f && Vector3.Angle (r_hand.forward, l_hand.forward) > 160f) {
					aligned = true;
					print ("aligned");
				}
			} else if (splitting && !aligned) {
				splitcount = 0;
				splitting = false;
				final = false;
				aligned = false;
				colorshift.GetComponent<Image> ().color = new Color (1f, .8f, 0);
			}
			if (aligned && (r_hand.position - l_hand.position).magnitude < .14f) {
				final = true;
				print ("final");
				colorshift.GetComponent<Image> ().color = new Color (0,0,1f);
			}
			if (final && (r_hand.position - l_hand.position).magnitude > .7f && (Vector3.Angle (r_hand.forward, target.transform.position - r_hand.position) < 45 || Vector3.Angle (l_hand.forward, target.transform.position - l_hand.position) < 45)) {
				print ("shocking");
				GameObject newsparks = Instantiate (spark, Player.position + Player.forward, Quaternion.LookRotation (target.transform.position - Player.position, Player.up));
				Destroy (newsparks, .6f);
				final = false;
				splitcount = 0;
				aligned = false;
				splitting = false;
				pm.mana -= 15;
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
			if ((lefthit == null || lefthit.tag != "manipulatable") && lind_prevFlex > 2) {
				selecting = true;
				ljoyrelease = false;
				GameObject newhedron = Instantiate (hedron, lrcpoint, Quaternion.identity);
				selected.Add (newhedron);
				newhedron.AddComponent<hedronbehavior> ();
				newhedron.GetComponent<MeshRenderer> ().material = selectedmat;
				newhedron.GetComponent<hedronbehavior> ().forward = Player.forward;
			} else if (lefthit != null && lefthit.tag == "manipulatable") {
				selecting = true;
				ljoyrelease = false;
				if (manipulating && selected.Contains (lefthit)) {
					manipulating = false;
					selected = new List<GameObject> ();
					lefthit.GetComponent<cakeslice.Outline> ().enabled = false;
				} else {
					foreach (GameObject o in selected) {
						if (o.GetComponent<cakeslice.Outline> ()) {
							o.GetComponent<cakeslice.Outline> ().enabled = false;
						}
					}
					selected = new List<GameObject> ();
					selected.Add (lefthit);
					manipulating = true;
					if (lefthit.GetComponent<BoulderBehavior> ()) {
						Destroy (lefthit.GetComponent<BoulderBehavior> ());
					}

					if (!lefthit.GetComponent<cakeslice.Outline> ()) {
						lefthit.AddComponent<cakeslice.Outline> ();
					}
					lefthit.GetComponent<cakeslice.Outline> ().enabled = true;
				}
			}
		}
		if (lind_prevFlex < .35) {
			lindexrelease = true;
		}

//		Right hand trigger
		if (rightpointing && rjoy_prevFlex && rjoyrelease) {
			if ((righthit == null || righthit.tag != "manipulatable") && rind_prevFlex > 2) {
				selecting = true;
				rjoyrelease = false;
				GameObject newhedron = Instantiate (hedron, rrcpoint, Quaternion.identity);
				selected.Add (newhedron);
				newhedron.AddComponent<hedronbehavior> ();
				newhedron.GetComponent<MeshRenderer> ().material = selectedmat;
				newhedron.GetComponent<hedronbehavior> ().forward = Player.forward;
			} else if (righthit != null && righthit.tag == "manipulatable"){
				selecting = true;
				rjoyrelease = false;
				if (manipulating && selected.Contains (righthit)) {
					manipulating = false;
					selected = new List<GameObject> ();
					righthit.GetComponent<cakeslice.Outline> ().enabled = false;
				} else {
					toremove = new List<GameObject> ();
					foreach (GameObject o in selected) {
						if (o == null) {
							toremove.Add (o);
							continue;
						}
						if (o.GetComponent<cakeslice.Outline> ()) {
							o.GetComponent<cakeslice.Outline> ().enabled = false;
						}
					}
					foreach (GameObject o in toremove) {
						if (selected.Contains (o)) {
							selected.Remove (o);
						}
					}
					selected = new List<GameObject> ();
					selected.Add (righthit);
					manipulating = true;
					if (righthit.GetComponent<BoulderBehavior> ()) {
						Destroy (righthit.GetComponent<BoulderBehavior> ());
					}

					if (!righthit.GetComponent<cakeslice.Outline> ()) {
						righthit.AddComponent<cakeslice.Outline> ();
					} 
					righthit.GetComponent<cakeslice.Outline> ().enabled = true;
				}
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
			bent = true;
			Vector3 leftmovedir = l_hand.position - Player.position;
			Vector3 rightmovedir = r_hand.position - Player.position;
			Vector3 avgdir = leftmovedir + rightmovedir;
			Vector3 target_point = (l_hand.position + l_hand.forward * (avgdir.magnitude-.05f) * 8f + r_hand.position + r_hand.forward * (avgdir.magnitude-.05f) * 8f)/2f;
			if (!maniplight) {
				maniplight = Instantiate (piprefab, target_point, Quaternion.identity);
			}
			maniplight.transform.position = target_point;
			toremove = new List<GameObject> ();
			foreach (GameObject o in selected){
				if (o == null) {
					toremove.Add (o);
					continue;
				}
				if (o.GetComponent<Rigidbody> () == null) {
					o.AddComponent<Rigidbody> ();
				}
				dir = target_point - o.transform.position;
				float dist = dir.magnitude;
				o.GetComponent<Rigidbody> ().mass = o.GetComponent<manipulatable>().mass;
				o.GetComponent<Rigidbody> ().useGravity = false;
				o.GetComponent<Rigidbody> ().velocity = new Vector3 (0, 0, 0);
				//if (o.GetComponent<Rigidbody> ().velocity.magnitude < 10) {
				o.GetComponent<Rigidbody> ().MovePosition (o.transform.position + dir * .07f);
				//}
				//if (Vector3.Angle (o.GetComponent<Rigidbody> ().velocity, dir) > 120) {
				//	o.GetComponent<Rigidbody> ().AddForce (dir * 64f);
				//}
				//if (dist < 5) {
				//	Vector3 tmp = o.GetComponent<Rigidbody> ().velocity;
				//	tmp.Normalize ();
				//	o.GetComponent<Rigidbody> ().velocity = tmp * dist;
				//}
			}
			foreach (GameObject o in toremove) {
				if (selected.Contains (o)) {
					selected.Remove (o);
				}
			}
		}
		if (bendingmode == 0) {
			if (manipulating && rhand_prevFlex > .55 && lhand_prevFlex > .55 && lind_prevFlex > .55 && rind_prevFlex > .55) {
				lindexrelease = false;
				rindexrelease = false;
				foreach (GameObject o in selected) {
					if (o.GetComponent<Rigidbody> () == null) {
						o.AddComponent<Rigidbody> ();
					}
					o.GetComponent<Rigidbody> ().useGravity = false;
					o.GetComponent<Rigidbody> ().AddForce ((l_hand.position - Player.position - leftlastposition + r_hand.position - Player.position - rightlastposition) * o.GetComponent<manipulatable> ().forcemult);
				}
				throwing = true;
			}

			if (lind_prevFlex < .35 && rind_prevFlex < .35 && throwing) {
				lindexrelease = true;
				rindexrelease = true;
				throwing = false;
				manipulating = false;
				selecting = false;
				manipcount = 100;
				foreach (GameObject o in selected) {
					o.GetComponent<Rigidbody> ().useGravity = true;
					o.GetComponent<Rigidbody> ().mass = o.GetComponent<manipulatable> ().mass;
					o.GetComponent<cakeslice.Outline> ().enabled = false;
				}
				selected = new List<GameObject> ();
			}
		} else if (bendingmode == 1) {
			if (bent && lhand_prevFlex < .35 && rhand_prevFlex < .35) {
				print ("throwing??");
				manipulating = false;
				selecting = false;
				manipcount = 100;
				foreach (GameObject o in selected) {
					if (o.GetComponent<Rigidbody> () == null) {
						o.AddComponent<Rigidbody> ();
					}
					o.GetComponent<Rigidbody> ().useGravity = true;
					o.GetComponent<Rigidbody> ().mass = o.GetComponent<manipulatable> ().mass;
					o.GetComponent<Rigidbody> ().velocity = dir * 3.3f;
					o.GetComponent<cakeslice.Outline> ().enabled = false;
				}
				selected = new List<GameObject> ();
				bent = false;
			}
		}
//		Defensive hedron mechanics
		if (hedrongroup != null) {
			hedrongroup.transform.position = Player.position;
			foreach (GameObject hed in hedrons_two) {
				if (hed == null) {
					toremove.Add (hed);
				}
			}
			foreach (GameObject hed in toremove) {
				hedrons_two.Remove (hed);
			}
			if (hedrons_two.Count == 0) {
				hedrongroup = null;
			}
		}
		if (mode == 2 && rind_prevFlex > .55 && rindexrelease && hedrongroup == null) {
			hedrongroup = new GameObject ();
			GameObject inst = Instantiate (hedron, new Vector3 (1f*2f, -2f, 1.73205f*2f), Quaternion.identity);
			hedrons_two.Add (inst);
			inst = Instantiate (hedron, new Vector3 (2f*2f, -2f, 0f), Quaternion.identity);
			hedrons_two.Add (inst);
			inst = Instantiate (hedron, new Vector3 (1f*2f, -2f, -1.73205f*2f), Quaternion.identity);
			hedrons_two.Add (inst);
			inst = Instantiate (hedron, new Vector3 (-1f*2f, -2f, -1.73205f*2f), Quaternion.identity);
			hedrons_two.Add (inst);
			inst = Instantiate (hedron, new Vector3 (-2f*2f, -2f, 0f), Quaternion.identity);
			hedrons_two.Add (inst);
			inst = Instantiate (hedron, new Vector3 (-1f*2f, -2f, 1.73205f*2f), Quaternion.identity);
			hedrons_two.Add (inst);
			foreach (GameObject hed in hedrons_two) {
				hed.AddComponent<hedronbehavior2> ();
				hed.transform.parent = hedrongroup.transform;
			}
			rindexrelease = false;
		}
		if (mode == 2 && spintrigger && hedrons_two.Count > 0) {
			foreach (GameObject hed in hedrons_two) {
				hed.GetComponent<hedronbehavior2> ().spinning = true;
			}
			spintrigger = false;
		}

		if (mode == 1 && hedrongroup != null && rhand_prevFlex > .55 && lhand_prevFlex > .55
		    && Vector3.Angle (r_hand.position - Player.position - rightlastposition, rightlastdirection) > 30
		    && Vector3.Angle (l_hand.position - Player.position - leftlastposition, leftlastdirection) > 30) {
			rightswinging = true;
			leftswinging = true;
			rightswingdist += (r_hand.position - Player.position - rightlastposition).magnitude;
			leftswingdist += (l_hand.position - Player.position - leftlastposition).magnitude;
			if (rightswingdist > .45f || leftswingdist > .45f) {
				readytopull = true;
			}
			if (readytopull && Vector3.Angle (r_hand.position - Player.position - rightlastposition, rightlastdirection) > 150) {
				pulldist += (r_hand.position - Player.position - rightlastposition).magnitude;
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
		if (!manipulating && selecting && rhand_prevFlex > .55 && Vector3.Angle (r_hand.position-Player.position - rightlastposition, rightlastdirection) < 30) {
			rightpunching = true;
			punchdist += (r_hand.position-Player.position - rightlastposition).magnitude;
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
						o.GetComponent<MeshRenderer> ().material = regularmat;
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
		rightlastposition = r_hand.position-Player.position;
		rightlastdirection = r_hand.forward;

//		Left hand punch
		if (!manipulating && selecting && lhand_prevFlex > .55 && Vector3.Angle (l_hand.position-Player.position - leftlastposition, leftlastdirection) < 30) {
			leftpunching = true;
			leftpunchdist += (l_hand.position-Player.position - leftlastposition).magnitude;
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
						o.GetComponent<MeshRenderer> ().material = regularmat;
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
		leftlastposition = l_hand.position-Player.position;
		leftlastdirection = l_hand.forward;

	}
}
	