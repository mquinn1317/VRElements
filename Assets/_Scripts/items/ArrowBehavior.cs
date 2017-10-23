using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ArrowBehavior : MonoBehaviour {

	public Transform l_hand, r_hand, player;

	public bool fire;
	public Vector3 trajectory;
	public GameObject bow;
	public GameObject damageprefab;
	public int dam;

	// Use this for initialization
	void Start () {
		dam = bow.GetComponent<iteminfo> ().itemattack;
		player = GameObject.FindGameObjectWithTag ("Player").transform;
		l_hand = GameObject.FindGameObjectWithTag ("lhandgrabber").transform;
		r_hand = GameObject.FindGameObjectWithTag ("rhandgrabber").transform;
	}
	
	// Update is called once per frame
	void Update () {
		if ((player.position - transform.position).magnitude > 1000) {
			Destroy (gameObject);
		}
		if (fire) {
			if (trajectory.x == 0 && trajectory.y == 0 && trajectory.z == 0) {
				trajectory = l_hand.position - r_hand.position;
			}
			transform.position += trajectory * 1.1f ;
		} else {
			Vector3 tmp = l_hand.position - r_hand.position;
			tmp.Normalize ();
			transform.rotation = Quaternion.LookRotation (tmp, transform.up);
			transform.position = r_hand.position + tmp * 1.2f;
		}
	}

	void OnTriggerEnter(Collider coll){
		print ("HEY WHAT THE FUCK: " + coll.gameObject.name);
		if (coll.gameObject.tag == "enemy") {
			float randmult = Random.Range (.8f, 1.3f);
			coll.gameObject.GetComponent<EnemyController> ().health -= (int)(dam * randmult);
			GameObject newdamage = Instantiate (damageprefab, coll.gameObject.transform.position + new Vector3 (0, coll.gameObject.GetComponent<EnemyController> ().damagedisplacement, 0), Quaternion.identity);
			newdamage.GetComponent<Text> ().text = ((int)(dam * randmult)).ToString ();
			newdamage.GetComponent<LookAtTarget> ().target = GameObject.FindGameObjectWithTag ("MainCamera").transform;
			Destroy (gameObject);
		} else if (coll.gameObject.tag == "skull") {
			float randmult = Random.Range (.8f, 1.3f);
			coll.gameObject.GetComponent<SkullController> ().health -= (int)(dam * randmult);
			GameObject newdamage = Instantiate (damageprefab, coll.gameObject.transform.position + new Vector3 (0, coll.gameObject.GetComponent<SkullController> ().damagedisplacement, 0), Quaternion.identity);
			newdamage.GetComponent<Text> ().text = ((int)(dam * randmult)).ToString ();
			newdamage.GetComponent<LookAtTarget> ().target = GameObject.FindGameObjectWithTag ("MainCamera").transform;
			Destroy (gameObject);
		} else if (coll.gameObject.tag == "frank") {
			print ("okay atleast we hit frank");
			float randmult = Random.Range (.8f, 1.3f);
			LimbColliders lc = coll.gameObject.GetComponent<LimbColliders> ();
			print ("pre lc.fb.health: " + lc.fb.health);
			lc.fb.health -= (int)(dam * randmult * lc.damagemult);
			print ("post lc.fb.health: " + lc.fb.health);
			GameObject newdamage = Instantiate (damageprefab, coll.gameObject.transform.position + new Vector3 (0, lc.fb.damagedisplacement, 0), Quaternion.identity);
			//newdamage.transform.localScale = newdamage.transform.localScale * 4;
			newdamage.GetComponent<damagecontroller> ().m = .05f * dam * randmult * lc.damagemult;
			newdamage.GetComponent<Text> ().text = ((int)(dam * randmult * lc.damagemult)).ToString ();
			newdamage.GetComponent<LookAtTarget> ().target = GameObject.FindGameObjectWithTag ("MainCamera").transform;
			Destroy (gameObject);
		} else if (coll.gameObject.tag == "hobgoblin") {
			float randmult = Random.Range (.8f, 1.3f);
			HobGoblinLimbColliders lc = coll.gameObject.GetComponent<HobGoblinLimbColliders> ();
			lc.fb.health -= (int)(dam * randmult * lc.damagemult);
			GameObject newdamage = Instantiate (damageprefab, coll.gameObject.transform.position + new Vector3 (0, lc.fb.damagedisplacement, 0), Quaternion.identity);
			//newdamage.transform.localScale = newdamage.transform.localScale * 4;
			newdamage.GetComponent<damagecontroller> ().m = .05f * dam * randmult * lc.damagemult;
			newdamage.GetComponent<Text> ().text = ((int)(dam * randmult * lc.damagemult)).ToString ();
			newdamage.GetComponent<LookAtTarget> ().target = GameObject.FindGameObjectWithTag ("MainCamera").transform;
			Destroy (gameObject);
		}
	}

}
