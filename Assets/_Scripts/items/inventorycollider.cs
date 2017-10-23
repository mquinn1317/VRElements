using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class inventorycollider : MonoBehaviour {

	public InventoryManager im;
	public GameObject l_hand, r_hand;
	public bool leftreleasable, rightreleasable;

	// Use this for initialization
	void Start () {
		im = GameObject.FindGameObjectWithTag ("inventorymanager").GetComponent<InventoryManager> ();
		leftreleasable = false;
		rightreleasable = false;
	}
	
	// Update is called once per frame
	void Update () {
		
	}

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

	void OnTriggerEnter (Collider coll){
		print ("coll.gameObject.tag: " + coll.gameObject.tag);
		if (coll.gameObject.tag == "rhandcoll") {
			if (r_hand.GetComponent<OVRGrabber> ().grabbedObject != null) {
				rightreleasable = true;
			} else {
				rightreleasable = false;
			}
		}
		if (coll.gameObject.tag == "lhandcoll") {
			if (l_hand.GetComponent<OVRGrabber> ().grabbedObject != null) {
				print ("leftreleasable");
				leftreleasable = true;
			} else {
				leftreleasable = false;
			}
		}
	}

	void OnTriggerExit (Collider coll){
		if (coll.gameObject.tag == "rhandcoll") {
			rightreleasable = false;
		}
		if (coll.gameObject.tag == "lhandcoll") {
			leftreleasable = false;
		}
	}

	public void releaseItem(GameObject o){
		if (o.GetComponent<iteminfo> ().itemtype == 0) {
			if (!im.swords.Contains (o)) {
				im.swords.Add (o);
			}
		}
		if (o.GetComponent<iteminfo> ().itemtype == 1) {
			if (!im.bows.Contains (o)) {
				im.bows.Add (o);
			}
		}
	}

}
