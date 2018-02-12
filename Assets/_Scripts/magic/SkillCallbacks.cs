using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using cakeslice;

public class SkillCallbacks : MonoBehaviour {

	public MagicManager mm;

	// Use this for initialization
	void Start () {
		mm = GameObject.FindGameObjectWithTag ("magicmanager").GetComponent<MagicManager>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void Tractor(bool left){
		Vector3 point = mm.rrcpoint;
		if (left) {
			point = mm.lrcpoint;
		}
		Vector3 force = (point - Player.Instance.transform.position).normalized;
		force.y *= 6f;
		print ("uhhhh your force is " + force);
		Rigidbody rb = Player.Instance.GetComponent<Rigidbody>();
		rb.AddForce (force/3f);
	}

	public void SpikeThrow(bool left){
		Transform hand = mm.r_hand.transform;
		if (left) {
			hand = mm.l_hand;
		}
		Vector3 spikeloc = hand.position + hand.forward * 2 - .2f * (mm.target.transform.position - hand.position);
		GameObject newspike = Instantiate (mm.spike, spikeloc, Quaternion.LookRotation (mm.target.transform.position - hand.position, transform.up));
		newspike.GetComponent<spikebehavior> ().fire = true;
		mm.rightspikecount = 17;
		Player.Instance.mana -= 15;
	}

	public void LightningBolt(){
		GameObject newsparks = Instantiate (mm.spark, Player.Instance.transform.position + Player.Instance.transform.forward, Quaternion.LookRotation (mm.target.transform.position - Player.Instance.transform.position, Player.Instance.transform.up));
		Destroy (newsparks, .6f);
	}

	public void FlameBlast(){
		GameObject newsparks = Instantiate (mm.flames, Player.Instance.transform.position + Player.Instance.transform.forward * 3f, Quaternion.LookRotation (mm.target.transform.position - Player.Instance.transform.position, Player.Instance.transform.up));
		Destroy (newsparks, 1.8f);
	}

	public void EarthTargeting(bool left){
		print ("EarthTargeting: " + left);
		GameObject hit = mm.righthit;
		bool joyrelease = mm.rjoyrelease;
		if (left) {
			hit = mm.lefthit;
			joyrelease = mm.ljoyrelease;
		}
		if (hit != null && hit.tag == "manipulatable") {
			print ("we want this to happen");
			mm.selecting = true;
			joyrelease = false;
			if (left) {
				mm.ljoyrelease = false;
			} else {
				mm.rjoyrelease = false;
			}
			if (mm.manipulating && mm.selected.Contains (hit)) {
				mm.manipulating = false;
				mm.selected = new List<GameObject> ();
				hit.GetComponent<cakeslice.Outline> ().enabled = false;
			} else {
				foreach (GameObject o in mm.selected) {
					if (o.GetComponent<cakeslice.Outline> ()) {
						o.GetComponent<cakeslice.Outline> ().enabled = false;
					}
				}
				mm.selected = new List<GameObject> ();
				mm.selected.Add (hit);
				mm.manipulating = true;
				if (hit.GetComponent<BoulderBehavior> ()) {
					Destroy (hit.GetComponent<BoulderBehavior> ());
				}

				if (!hit.GetComponent<cakeslice.Outline> ()) {
					hit.AddComponent<cakeslice.Outline> ();
				}
				hit.GetComponent<cakeslice.Outline> ().enabled = true;
			}
		}
	}

	public void EarthManip(){
		mm.bent = true;
		if (Player.Instance.mana < 1f) {
			EarthRelease ();
		}
		Player.Instance.mana -= Time.deltaTime * 8f;
		Vector3 leftmovedir = mm.l_hand.position - Player.Instance.transform.position;
		Vector3 rightmovedir = mm.r_hand.position - Player.Instance.transform.position;
		Vector3 avgdir = leftmovedir + rightmovedir;
		Vector3 target_point = (mm.l_hand.position + mm.l_hand.forward * (avgdir.magnitude-.05f) * 8f + mm.r_hand.position + mm.r_hand.forward * (avgdir.magnitude-.05f) * 8f)/2f;
		if (!mm.maniplight) {
			mm.maniplight = Instantiate (mm.piprefab, target_point, Quaternion.identity);
		}
		mm.maniplight.transform.position = target_point;
		mm.toremove = new List<GameObject> ();
		foreach (GameObject o in mm.selected){
			if (o == null) {
				mm.toremove.Add (o);
				continue;
			}
			if (o.GetComponent<Rigidbody> () == null) {
				o.AddComponent<Rigidbody> ();
			}
			mm.dir = target_point - o.transform.position;
			float dist = mm.dir.magnitude;
			o.GetComponent<Rigidbody> ().mass = o.GetComponent<manipulatable>().mass;
			o.GetComponent<Rigidbody> ().useGravity = false;
			o.GetComponent<Rigidbody> ().velocity = new Vector3 (0, 0, 0);
			//if (o.GetComponent<Rigidbody> ().velocity.magnitude < 10) {
			o.GetComponent<Rigidbody> ().MovePosition (o.transform.position + mm.dir * .07f);
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
		foreach (GameObject o in mm.toremove) {
			if (mm.selected.Contains (o)) {
				mm.selected.Remove (o);
			}
		}
	}

	public void EarthRelease(){
		mm.manipulating = false;
		mm.selecting = false;
		mm.manipcount = 100;
		List<GameObject> to_remove = new List<GameObject> ();
		foreach (GameObject o in mm.selected) {
			if (o == null) {
				to_remove.Add (o);
				continue;
			}
			if (o.GetComponent<Rigidbody> () == null) {
				o.AddComponent<Rigidbody> ();
			}
			o.GetComponent<Rigidbody> ().useGravity = true;
			o.GetComponent<Rigidbody> ().mass = o.GetComponent<manipulatable> ().mass;
			o.GetComponent<Rigidbody> ().velocity = mm.dir * 3.3f;
			o.GetComponent<cakeslice.Outline> ().enabled = false;
		}
		foreach (GameObject o in to_remove) {
			mm.selected.Remove (o);
		}
		mm.selected = new List<GameObject> ();
		mm.bent = false;
	}

}
