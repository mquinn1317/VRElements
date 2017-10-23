using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class targetcone : MonoBehaviour {

	public List<GameObject> enemies;
	public List<GameObject> to_remove;
	public GameObject nearestenemy;
	public GameObject curenemy;
	public Transform Player;
	public Material nearestmat;
	public Material regularmat;

	// Use this for initialization
	void Start () {
		to_remove = new List<GameObject> ();
		enemies = new List<GameObject> ();
	}
	
	// Update is called once per frame
	void Update () {
		//print ("enemies.Count: " + enemies.Count);
		foreach (GameObject o in enemies){
			if (o == null) {
				to_remove.Add(o);
				continue;
			}
			curenemy = o;
			if (nearestenemy == null) {
				nearestenemy = o;
//				if (nearestenemy.tag == "enemy") {
//					nearestenemy.GetComponent<EnemyController> ().selected = true;
//				} else if (nearestenemy.tag == "skull") {
//					nearestenemy.GetComponent<SkullController> ().selected = true;
//				}
				continue;
			}
			if ((o.transform.position - Player.position).magnitude < (nearestenemy.transform.position - Player.position).magnitude) {
				
//				if (nearestenemy.tag == "enemy") {
//					nearestenemy.GetComponent<EnemyController> ().selected = false;
//				} else if (nearestenemy.tag == "skull") {
//					nearestenemy.GetComponent<SkullController> ().selected = false;
//				}
				nearestenemy = o;
//				if (nearestenemy.tag == "enemy") {
//					nearestenemy.GetComponent<EnemyController> ().selected = true;
//				} else if (nearestenemy.tag == "skull") {
//					nearestenemy.GetComponent<SkullController> ().selected = true;
//				}
			}
		}
		foreach (GameObject o in to_remove) {
			enemies.Remove (o);
		}
		to_remove = new List<GameObject> ();
	}

	void OnTriggerEnter(Collider coll){
		if ((coll.gameObject.tag == "skull" || coll.gameObject.tag == "enemy") && !enemies.Contains (coll.gameObject)) {
			enemies.Add (coll.gameObject);
		}
		if (coll.gameObject.tag == "frank" && !enemies.Contains (coll.gameObject.GetComponent<LimbColliders>().fb.chesttransform)) {
			enemies.Add (coll.gameObject.GetComponent<LimbColliders>().fb.chesttransform);
		}
	}

	void OnTriggerStay(Collider coll){
		if ((coll.gameObject.tag == "skull" || coll.gameObject.tag == "enemy") && !enemies.Contains (coll.gameObject)) {
			enemies.Add (coll.gameObject);
		}
		if (coll.gameObject.tag == "frank" && !enemies.Contains (coll.gameObject.GetComponent<LimbColliders>().fb.chesttransform)) {
			enemies.Add (coll.gameObject.GetComponent<LimbColliders>().fb.chesttransform);
		}
	}

	void OnTriggerExit(Collider coll){
		if ((coll.gameObject.tag == "skull" || coll.gameObject.tag == "enemy") && enemies.Contains (coll.gameObject)) {
			enemies.Remove (coll.gameObject);
		}
		if (coll.gameObject.tag == "frank" && enemies.Contains (coll.gameObject.GetComponent<LimbColliders>().fb.chesttransform)) {
			enemies.Remove(coll.gameObject.GetComponent<LimbColliders>().fb.chesttransform);
		}
	}

}
