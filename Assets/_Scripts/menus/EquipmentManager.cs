using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EquipmentManager : MonoBehaviour {

	//public Transform helmetbox, rringbox, lringbox, bowbox, chestbox, shoulderbox, wristbox, legbox, footbox, righthipbox, lefthipbox, beltbox, leftbackbox, rightbackbox, leftshoulderbox, rightshoulderbox;
	public Transform l_hand, r_hand;
	public Text curboxname, curboxcontents;
	public Transform[] boxes;
	public GameObject[] boxobjs;
	public string[] boxnames;
	public int selected;
	//public GameObject helmet, rring, lring, bow, chest, shoulder, wrist, leg, foot, righthip, lefthip, belt, leftback, rightback, leftshoulder, rightshoulder;
	public GameObject[] equipped;
	public GameObject[] invprev;
	public GameObject[] invprevtransforms;
	public int invprevpage;
	public bool active, lindrelease, rindrelease, turnedoff;
	public float lind_prevFlex, rind_prevFlex;
	public Sprite bowimg, swordimg, swordlandsimg;
	public List<GameObject> invslots;

	public InventoryManager im;

	// Use this for initialization
	void Start () {
		invprevpage = 0;
		invslots = invprev[invprevpage].GetComponent<Actuator> ().images;
		selected = -1;
		active = false;
		turnedoff = true;
		lindrelease = true;
		rindrelease = true;
		curboxname.color = new Color (1, 1, 1);
	}
	
	// Update is called once per frame
	void Update () {
		if (active) {
			turnedoff = false;
			lind_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.LIndexTrigger);
			rind_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.RIndexTrigger);
			if (lind_prevFlex < .35) {
				lindrelease = true;
			}
			if (rind_prevFlex < .35) {
				rindrelease = true;
			}
			if (!invprev [invprevpage].GetComponent<Actuator> ().activated) {
				invprev [invprevpage].GetComponent<Actuator> ().activating = true;
			}
			curboxname.color = new Color (1, 1, 1);
			for (int i = 0; i < boxes.Length; i++) {
				if (Vector3.Angle (boxes [i].position - l_hand.position, l_hand.forward) < .9f) {
					boxobjs [i].GetComponent<Image> ().color = new Color (1, 0, 0);
					if (selected == -1) {
						curboxname.text = boxnames [i];
					}
					if (lindrelease && lind_prevFlex > .55) {
						curboxname.text = boxnames [i];
						lindrelease = false;
						if (selected == i) {
							selected = -1;
							continue;
						}
						selected = i;
						if (equipped [i]) {
							curboxcontents.text = equipped [i].name;
						} else {
							curboxcontents.text = "Empty";
						}
						GameObject invpage = invprev [invprevpage];
						invslots = invpage.GetComponent<Actuator> ().images;
						if (i == 1) {
							int counter = 0;
							for (int j = 0; j < 20; j++) {
								if (j < im.bows.Count * 2) {
									invslots [j].SetActive (true);
									if (j % 2 == 1) {
										invslots [j].GetComponent<Image> ().overrideSprite = im.bows [(j-1)/2].GetComponent<iteminfo> ().img;
									}
								} else {
									invslots [j].SetActive (false);
								}
							}
						} else if (i == 2 || i == 3 || i == 12 || i == 13 || i == 14 || i == 15) {
							int counter = 0;
							for (int j = 0; j < 20; j++) {
								if (j < im.swords.Count * 2) {
									invslots [j].SetActive (true);
									if (j % 2 == 1) {
										invslots [j].GetComponent<Image> ().overrideSprite = im.swords [(j-1)/2].GetComponent<iteminfo> ().img;
									}
								} else {
									invslots [j].SetActive (false);
								}
							}
						} else {
							for (int j = 0; j < 20; j++) {
								invslots [j].SetActive (false);
							}
						}
					}
				} else if (selected != i) {
					boxobjs [i].GetComponent<Image> ().color = new Color (1, 1, 1);
				}
			}
			for (int i = 0; i < 10; i++) {
				List<GameObject> to_check = new List<GameObject>();
				if (selected == 1) {
					to_check = im.bows;
				} else if (selected == 2 || selected == 3 || selected == 12 || selected == 13 || selected == 14 || selected == 15) {
					to_check = im.swords;
				}
				if (Vector3.Angle (invprevtransforms [i].transform.position - l_hand.position, l_hand.forward) < 3.2f) {
					if (to_check != null  && i < to_check.Count && to_check [i] != null) {
						curboxcontents.text = to_check [i].GetComponent<iteminfo> ().itemname;
						invslots [i * 2].GetComponent<Image> ().color = new Color (1, 0, 0, 1);
						if (lindrelease && lind_prevFlex > .55) {
							lindrelease = false;
							equipped [selected] = to_check [i];
						}
					}
				} else {
					invslots [i * 2].GetComponent<Image> ().color = new Color (1, 1, 1, 1);
				}
			}
		} else if (!turnedoff) {
			invprev [invprevpage].GetComponent<Actuator> ().deactivating = true;
			turnedoff = true;
		}
	}
}
