using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChestBehavior : MonoBehaviour {

	public GameObject contents;
	public int it;
	public GameObject instantiated;
	public Transform instantiatedchild;
	public Transform player, l_hand, r_hand;
	public bool opening, lhandrelease, rhandrelease, grabbed;
	public float dist_traveled, lhand_prevFlex, rhand_prevFlex;
	public Vector3 lhand_lastpos, rhand_lastpos;

	public bool open_chest;
	public int open_counter;
	public Transform to_rotate;

	// Use this for initialization
	void Start () {
		opening = false;
		dist_traveled = 0;
		lhandrelease = true;
		rhandrelease = true;
		lhand_lastpos = l_hand.position;
		rhand_lastpos = r_hand.position;
	}
	
	// Update is called once per frame
	void Update () {
		lhand_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.LHandTrigger);
		rhand_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.RHandTrigger);
		if (lhand_prevFlex < .35) {
			lhandrelease = true;
		}
		if (rhand_prevFlex < .35) {
			rhandrelease = true;
		}
		if ((player.position - transform.position).magnitude < 6) {
			if (!open_chest && !opening && lhandrelease && rhandrelease && lhand_prevFlex > .55 && rhand_prevFlex > .55 && Mathf.Abs (l_hand.position.y - transform.position.y - .65f) < .2f && Mathf.Abs (r_hand.position.y - transform.position.y - .65f) < .2f) {
				opening = true;
				lhandrelease = false;
				rhandrelease = false;
			}
			if (opening && !lhandrelease && !rhandrelease) {
				dist_traveled += (l_hand.position - lhand_lastpos).magnitude + (r_hand.position - rhand_lastpos).magnitude;
				if (dist_traveled > .45) {
					opening = false;
					open_chest = true;
				}
			}
		}
		if (open_chest && open_counter < 90) {
			open_counter += 1;
			to_rotate.rotation *= Quaternion.Euler (0, 0, 1.5f);
			if (open_counter > 45) {
				if (!instantiated) {
					instantiated = Instantiate (contents, new Vector3(0,.45f,.47f), Quaternion.Euler(0,90f,45f));
					instantiatedchild = instantiated.transform.GetChild (0);
					instantiatedchild.position = transform.position;
					instantiatedchild.GetComponent<DroppedItem>().pos = transform.position;
					if (!instantiatedchild.gameObject.GetComponent<iteminfo> ()) {
						instantiatedchild.gameObject.AddComponent<iteminfo> ();
					}
					instantiatedchild.gameObject.GetComponent<iteminfo> ().item = it;
					print ("instantiatedchild.item: " + instantiatedchild.gameObject.GetComponent<iteminfo> ().item);
					print ("it: " + it);
				} else {
					instantiatedchild.GetComponent<DroppedItem>().pos += new Vector3 (0, 0.012f, 0);
				}
			}
		}
		if (open_chest && open_counter >= 90 && open_counter < 100) {
			open_counter += 1;
			if (instantiated) {
				instantiatedchild.GetComponent<DroppedItem>().pos += new Vector3 (0, 0.012f, 0);
			}
		}
			
		lhand_lastpos = l_hand.position;
		rhand_lastpos = r_hand.position;
	}
}
