using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MenuController : MonoBehaviour {

	public bool statsvisible;
	public GameObject menu, equipmenu;
	public PlayerManager pm;
	public EquipmentManager em;

	public bool menu_prevFlex;
	public bool menu_released;

	public bool b_prevFlex;
	public bool b_released;

	public float rind_prevFlex;
	public bool rind_released;

	public Vector2 r2djoy_prevFlex;
	public Vector2 l2djoy_prevFlex;
	public bool llrelease, lrrelease, rrrelease, rlrelease;

	public Transform attackbuttontransform;
	public Transform defensebuttontransform;
	public Transform speedbuttontransform;

	public Transform r_hand;

	public Image attackimg, defenseimg, speedimg;
	private bool attackselect, defenseselect, speedselect;

	public bool activating, activated, deactivating, deactivated;
	public float activationcount;

	// Use this for initialization
	void Start () {
		activationcount = 0;
		pm = GameObject.FindGameObjectWithTag ("playermanager").GetComponent<PlayerManager>();
		statsvisible = false;
		activated = false;
		deactivated = true;
		activating = false;
		deactivating = false;
		menu_released = true;
		b_released = true;
		rind_released = true;
	}
	
	// Update is called once per frame
	void Update () {
		menu_prevFlex = OVRInput.Get (OVRInput.RawButton.Start);
		rind_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.RIndexTrigger);
		r2djoy_prevFlex = OVRInput.Get (OVRInput.RawAxis2D.RThumbstick);
		l2djoy_prevFlex = OVRInput.Get (OVRInput.RawAxis2D.LThumbstick);
		b_prevFlex = OVRInput.Get (OVRInput.RawButton.B);
		if (rind_prevFlex < .35) {
			rind_released = true;
		}
		if (r2djoy_prevFlex.x > -.35) {
			rlrelease = true;
		}
		if (r2djoy_prevFlex.x < .35) {
			rrrelease = true;
		}
		if (l2djoy_prevFlex.x > -.35) {
			llrelease = true;
		}
		if (l2djoy_prevFlex.x < .35) {
			lrrelease = true;
		}
		if (statsvisible) {
			if (Vector3.Angle (attackbuttontransform.position - r_hand.position, r_hand.forward) < 1.5) {
				attackselect = true;
				defenseselect = false;
				speedselect = false;
			}
			if (Vector3.Angle (defensebuttontransform.position - r_hand.position, r_hand.forward) < 1.5) {
				defenseselect = true;
				attackselect = false;
				speedselect = false;
			} 
			if (Vector3.Angle (speedbuttontransform.position - r_hand.position, r_hand.forward) < 1.5) {
				speedselect = true;
				attackselect = false;
				defenseselect = false;
			} 
			if (attackselect) {
				attackimg.color = new Color (1, 0, 0);
				defenseimg.color = new Color (1,1,1);
				speedimg.color = new Color (1, 1,1);
			} else if (defenseselect) {
				defenseimg.color = new Color (1, 0, 0);
				attackimg.color = new Color (1, 1,1);
				speedimg.color = new Color (1, 1,1);
			} else if (speedselect) {
				speedimg.color = new Color (1, 0, 0);
				attackimg.color = new Color (1, 1,1);
				defenseimg.color = new Color (1, 1,1);
			}
			if (rind_prevFlex > .55 && rind_released && pm.sp > 0) {
				rind_released = false;
				if (attackselect) {
					pm.defense += 1;
					pm.sp -= 1;
				} else if (defenseselect) {
					pm.attack += 1;
					pm.sp -= 1;
				} else if (speedselect) {
					pm.speed += 1;
					pm.manaregen += pm.speed / 20f;
					pm.sp -= 1;
				}
			}

		}
		if (menu_prevFlex && menu_released && !statsvisible) {
			menu_released = false;
			statsvisible = true;
			menu.GetComponent<Actuator> ().activating = true;
			Time.timeScale = .00001f;
		}
		if (!menu_prevFlex && !menu_released) {
			menu_released = true;
		}
		if (l2djoy_prevFlex.x > .45 && lrrelease) {
			if (menu.GetComponent<Actuator> ().activated) {
				menu.GetComponent<Actuator> ().deactivating = true;
				equipmenu.GetComponent<Actuator> ().activating = true;
				em.active = true;
			}
			lrrelease = false;
		}
		if (l2djoy_prevFlex.x < -.45 && llrelease) {
			if (equipmenu.GetComponent<Actuator> ().activated) {
				equipmenu.GetComponent<Actuator> ().deactivating = true;
				menu.GetComponent<Actuator> ().activating = true;
				em.active = false;
			}
			llrelease = false;
		}
		if (r2djoy_prevFlex.x > .45 && rrrelease) {
			if (menu.GetComponent<Actuator> ().activated) {
				em.active = true;
				menu.GetComponent<Actuator> ().deactivating = true;
				equipmenu.GetComponent<Actuator> ().activating = true;
			}
			rrrelease = false;
		}
		if (r2djoy_prevFlex.x < -.45 && rlrelease) {
			if (equipmenu.GetComponent<Actuator> ().activated) {
				equipmenu.GetComponent<Actuator> ().deactivating = true;
				menu.GetComponent<Actuator> ().activating = true;
				em.active = false;
			}
			rlrelease = false;
		}



		if (b_prevFlex && b_released && statsvisible) {
			b_released = false;
			statsvisible = false;
			menu.GetComponent<Actuator> ().deactivating = true;
			equipmenu.GetComponent<Actuator> ().deactivating = true;
			em.active = false;
			Time.timeScale = 1;
		}
		if (!b_prevFlex && !b_released) {
			b_released = true;
		}
		
	}
}
