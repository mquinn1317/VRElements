using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using cakeslice;

public class iteminfo : MonoBehaviour {

	public int itemid;
	public int item;
	public int itemtype;
//	Sword : 0
//	Bow : 1
//	Helmet : 2
//	Torso : 3
//	Shield : 4
//	Legs : 5
//	Boots : 6
//	Wrists : 7
//	Shoulders : 8
//	Amulet : 9
//	Ring : 10
//	Staff : 11
//	Wand : 12
//	Axe : 13

	public MenuController mc;
	public GameObject r_hand, l_hand, player;
	public float lhand_prevFlex, rhand_prevFlex, dist_traveled, dwell, undwell;
	public bool lhandrelease,rhandrelease,lindrelease,rindrelease,lindtouch, rindtouch;
	public bool left, right, activating, activated, outlined, deactivating, deactivated, destroyonrelease = true, dr;
	public Vector3 leftlastposition, rightlastposition;
	private int activationcount;
	public bool materializing, materialized;
	public float materializationcount;
	public Transform materializationpoint;
	public Material dissolvemat, tooned;

	public GameObject itemmenuitem1, itemmenuitem2, itemmenuitem3;
	public Transform itemmenuitem1bg, itemmenuitem2bg, itemmenuitem3bg;
	public GameObject itemstats;

	public itemlib it;

	public string itemname, extraattribute;
	public int itemattack, equipcost;
	public float critrate, attrval;
	public Sprite img;

	// Use this for initialization
	void Start () {
		materializing = false;
		materializationcount = 0;
		activationcount = 0;
		left = false;
		right = false;
		activating = false;
		deactivating = false;
		activated = false;
		deactivated = true;
		dr = false;
		dwell = 0;
		dist_traveled = 0;
		mc = GameObject.FindGameObjectWithTag ("menucontroller").GetComponent<MenuController> ();
		r_hand = GameObject.FindGameObjectWithTag ("rhandgrabber");
		l_hand = GameObject.FindGameObjectWithTag ("lhandgrabber");
		player = GameObject.FindGameObjectWithTag ("Player");
		itemmenuitem1 = GameObject.FindGameObjectWithTag ("itemmenuitem1");
		itemmenuitem2 = GameObject.FindGameObjectWithTag ("itemmenuitem2");
		itemmenuitem3 = GameObject.FindGameObjectWithTag ("itemmenuitem3");
		itemmenuitem1bg = itemmenuitem1.transform.GetChild (0);
		itemmenuitem2bg = itemmenuitem2.transform.GetChild (0);
		itemmenuitem3bg = itemmenuitem3.transform.GetChild (0);
		itemstats = GameObject.FindGameObjectWithTag ("itemstats");
		it = GameObject.FindGameObjectWithTag ("itemlibrary").GetComponent<itemlib> ();
		lhandrelease = true;
		rhandrelease = true;
		lindrelease = true;
		rindrelease = true;
		lindtouch = false;
		rindtouch = false;
		gameObject.AddComponent<cakeslice.Outline> ();
		gameObject.GetComponent<cakeslice.Outline> ().color = 1;
		gameObject.GetComponent<cakeslice.Outline> ().enabled = false;
		itemname = it.namedict [item];
		itemtype = it.typedict [item];
		itemattack = it.attackdict [item];
		equipcost = it.equipdict [item];
		critrate = it.critdict [item];
		extraattribute = it.extradict [item];
		attrval = it.attrdict [item];
		img = it.imgdict [item];
	}
	
	// Update is called once per frame
	void Update () {
		dissolvemat.SetVector ("_Center", materializationpoint.position);
		if (!materialized && gameObject.GetComponent<OVRGrabbable> ().isGrabbed) {
			materializing = true;
			gameObject.GetComponent<MeshRenderer> ().enabled = true;
		}
		if ((materialized || materializing) && !gameObject.GetComponent<OVRGrabbable> ().isGrabbed) {
			materializing = false;
			materialized = false;
			materializationcount = 0;
			gameObject.GetComponent<MeshRenderer> ().enabled = false;
		}
		if (materializing) {
			materializationcount += Time.deltaTime*1.2f;
			dissolvemat.SetFloat ("_Distance", materializationcount/1.2f);
			if (materializationcount > 4f) {
				materializing = false;
				materialized = true;
				materializationcount = 0;
				gameObject.GetComponent<MeshRenderer> ().material = tooned;
			}
		}

		if (itemattack == 0 || img == null) {
			itemname = it.namedict [item];
			itemattack = it.attackdict [item];
			equipcost = it.equipdict [item];
			critrate = it.critdict [item];
			extraattribute = it.extradict [item];
			attrval = it.attrdict [item];
			img = it.imgdict [item];
		}
		if (!gameObject.GetComponent<OVRGrabbable> ().isGrabbed) {
			if (destroyonrelease && dr) {
				gameObject.GetComponent<MeshRenderer> ().material = dissolvemat;
				gameObject.SetActive (false);
				dr = false;
			}
			left = false;
			right = false;
		} else {
			if (destroyonrelease) {
				dr = true;
			}
		}
		if (!left && !right && gameObject.GetComponent<OVRGrabbable>().isGrabbed) {
			if (gameObject.GetComponent<OVRGrabbable> ().grabbedBy.m_gripTransform.position == r_hand.transform.position) {
				right = true;
				left = false;
			} else {
				left = true;
				right = false;
			}
		}
		lhand_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.LHandTrigger);
		rhand_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.RHandTrigger);
		lindtouch = OVRInput.Get (OVRInput.RawTouch.LIndexTrigger);
		rindtouch = OVRInput.Get (OVRInput.RawTouch.RIndexTrigger);
		if (lhand_prevFlex <= 0.35f) {
			lhandrelease = true;
		} else if (lhand_prevFlex >= .55f){
			lhandrelease = false;
		}
		if (rhand_prevFlex <= 0.35f) {
			rhandrelease = true;
		} else if (rhand_prevFlex > .55f){
			rhandrelease = false;
		}
		if (right && gameObject.GetComponent<OVRGrabbable>().isGrabbed) {
			//print ("GRABBED RIGHT");

			if (!activating && !outlined && !activated && Vector3.Angle (r_hand.transform.forward, player.transform.forward + new Vector3 (0, 1, 0)) < 50 && Vector3.Angle(r_hand.transform.up, Quaternion.Euler(0,-90,0)*player.transform.forward) < 30) {
				undwell = 0;
				dwell += 1;
				if (dwell > 60) {
					print ("OUTLINING");
					outlined = true;
					gameObject.GetComponent<cakeslice.Outline> ().enabled = true;
					dwell = 0;
				}
			} else if (Vector3.Angle (r_hand.transform.forward, player.transform.forward + new Vector3 (0, 1, 0)) > 50 || Vector3.Angle(r_hand.transform.up, Quaternion.Euler(0,-90,0)*player.transform.forward) > 30){
				undwell += 1;
				if (undwell > 60 && outlined) {
					outlined = false;
					gameObject.GetComponent<cakeslice.Outline> ().enabled = false;
				}
				dwell = 0;
			}
			if (lindtouch && !lhandrelease && outlined) {
				dist_traveled += Mathf.Abs((l_hand.transform.position - leftlastposition).y);
				if (dist_traveled > .3) {
					outlined = false;
					GetComponent<cakeslice.Outline> ().enabled = false;
					activating = true;
				}
			}
			if (activated && OVRInput.Get (OVRInput.RawButton.B)) {
				deactivating = true;
			}
			if (activating) {
				if (activated) {
					activating = false;
				}
				deactivated = false;
				if (activationcount == 10) {
					itemmenuitem3.GetComponent<itemmenuitem> ().activating = true;
				}
				if (activationcount == 30) {
					itemmenuitem2.GetComponent<itemmenuitem> ().activating = true;
				}
				if (activationcount == 50) {
					itemmenuitem1.GetComponent<itemmenuitem> ().activating = true;
				}
				activationcount += 1;
				if (activationcount > 50) {
					activationcount = 0;
					activating = false;
					activated = true;
					Time.timeScale = .00001f;
				}
			}
			if (deactivating) {
				if (deactivated) {
					deactivating = false;
				}
				activated = false;
				if (activationcount == 10) {
					itemmenuitem1.GetComponent<itemmenuitem> ().deactivating = true;
				}
				if (activationcount == 30) {
					itemmenuitem2.GetComponent<itemmenuitem> ().deactivating = true;
				}
				if (activationcount == 50) {
					itemmenuitem3.GetComponent<itemmenuitem> ().deactivating = true;
				}
				activationcount += 1;
				if (activationcount > 50) {
					activationcount = 0;
					deactivating = false;
					deactivated = true;
					Time.timeScale = 1f;
				}
			}
			if (activated) {
				if (Vector3.Angle (l_hand.transform.forward, itemmenuitem1.transform.position - l_hand.transform.position) < 3 || Vector3.Angle (l_hand.transform.forward, itemmenuitem1bg.position - l_hand.transform.position) < 3) {
					itemmenuitem1.GetComponent<itemmenuitem> ().selected = true;
					itemmenuitem2.GetComponent<itemmenuitem> ().selected = false;
					itemmenuitem3.GetComponent<itemmenuitem> ().selected = false;
				}
				if (Vector3.Angle (l_hand.transform.forward, itemmenuitem2.transform.position - l_hand.transform.position) < 3|| Vector3.Angle (l_hand.transform.forward, itemmenuitem2bg.position - l_hand.transform.position) < 3) {
					itemmenuitem2.GetComponent<itemmenuitem> ().selected = true;
					itemmenuitem1.GetComponent<itemmenuitem> ().selected = false;
					itemmenuitem3.GetComponent<itemmenuitem> ().selected = false;
				}
				if (Vector3.Angle (l_hand.transform.forward, itemmenuitem3.transform.position - l_hand.transform.position) < 3|| Vector3.Angle (l_hand.transform.forward, itemmenuitem3bg.position - l_hand.transform.position) < 3) {
					itemmenuitem3.GetComponent<itemmenuitem> ().selected = true;
					itemmenuitem2.GetComponent<itemmenuitem> ().selected = false;
					itemmenuitem1.GetComponent<itemmenuitem> ().selected = false;
				}
			}
			if (itemmenuitem1.GetComponent<itemmenuitem> ().selected && OVRInput.Get (OVRInput.RawAxis1D.LIndexTrigger) > .55) {
				itemmenuitem1.GetComponent<itemmenuitem> ().selected = false;
				deactivating = true;
				itemstats.GetComponent<itemstatscreen> ().activating = true;
				itemstats.GetComponent<itemstatscreen> ().UpdateScreen (itemname, itemattack, equipcost, critrate, extraattribute, attrval);
			}
			if (itemstats.GetComponent<itemstatscreen> ().activated && OVRInput.Get (OVRInput.RawButton.B)) {
				itemstats.GetComponent<itemstatscreen> ().deactivating = true;
				activating = true;
				Time.timeScale = .00001f;
			}
		}
		leftlastposition = l_hand.transform.position;
		rightlastposition = r_hand.transform.position;
	}
}
