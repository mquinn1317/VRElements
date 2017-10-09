using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class spikebehavior : MonoBehaviour {

	public bool fire;
	public GameObject target;
	public Vector3 forward;
	public GameObject targetcone;
	public GameObject damageprefab;
	public Rigidbody rb;
	private int lifetime;
	private PlayerManager pm;


	// Use this for initialization
	void Start () {
		pm = GameObject.FindGameObjectWithTag ("playermanager").GetComponent<PlayerManager>();
		lifetime = 0;
		targetcone = GameObject.FindGameObjectWithTag ("targetcone");
		target = targetcone.GetComponent<targetcone> ().nearestenemy;
		if (target) {
			forward = target.transform.position - transform.position;
			forward.Normalize ();
		}
		rb = GetComponent<Rigidbody> ();
	}
	
	// Update is called once per frame
	void Update () {
		lifetime += 1;
		if (target != null) {
//			forward = target.transform.position - transform.position;
//			forward.Normalize ();
			if (Quaternion.Angle (Quaternion.LookRotation (transform.forward, transform.up), Quaternion.LookRotation (forward, transform.up)) > 3) {
				transform.rotation = Quaternion.RotateTowards (transform.rotation, Quaternion.LookRotation (forward), 2);
			} 
			if (fire) {
				print ("FIRING");
				transform.position += forward * 5.4f * Time.deltaTime * pm.speed;
			}
		} else if(fire) {
			if (!gameObject.GetComponent<Rigidbody> ()) {
				gameObject.AddComponent<Rigidbody> ();
			}
			gameObject.GetComponent<Rigidbody> ().useGravity = true;
			gameObject.GetComponent<Rigidbody> ().isKinematic = false;
		}
	}

	void OnTriggerEnter(Collider coll){
		if (coll.gameObject.tag == "enemy") {
			int dam = Random.Range (7+pm.attack, 13+pm.attack*2);
			coll.gameObject.GetComponent<EnemyController> ().health -= dam;
			GameObject newdamage = Instantiate (damageprefab, coll.gameObject.transform.position + new Vector3 (0, coll.gameObject.GetComponent<EnemyController>().damagedisplacement, 0), Quaternion.identity);
			newdamage.GetComponent<Text> ().text = dam.ToString();
			newdamage.GetComponent<LookAtTarget> ().target = GameObject.FindGameObjectWithTag ("MainCamera").transform;
			Destroy (gameObject);
		} else if (coll.gameObject.tag == "skull") {
			int dam = Random.Range (7+pm.attack, 13+pm.attack*2);
			coll.gameObject.GetComponent<SkullController> ().health -= dam;
			GameObject newdamage = Instantiate (damageprefab, coll.gameObject.transform.position + new Vector3 (0, coll.gameObject.GetComponent<SkullController>().damagedisplacement, 0), Quaternion.identity);
			newdamage.GetComponent<Text> ().text = dam.ToString();
			newdamage.GetComponent<LookAtTarget> ().target = GameObject.FindGameObjectWithTag ("MainCamera").transform;
			Destroy (gameObject);
		} else if (coll.gameObject.tag == "frank") {
			int dam = Random.Range (7+pm.attack, 13+pm.attack*2);
			coll.gameObject.GetComponent<FrankBehavior> ().health -= dam;
			GameObject newdamage = Instantiate (damageprefab, coll.gameObject.transform.position + new Vector3 (0, coll.gameObject.GetComponent<FrankBehavior>().damagedisplacement, 0), Quaternion.identity);
			newdamage.transform.localScale = newdamage.transform.localScale * 4;
			newdamage.GetComponent<Text> ().text = dam.ToString();
			newdamage.GetComponent<LookAtTarget> ().target = GameObject.FindGameObjectWithTag ("MainCamera").transform;
			Destroy (gameObject);
		} else if(coll.gameObject.tag != "spike" && coll.gameObject.tag != "targetcone" && coll.gameObject.tag != "Player" && lifetime >= 60){
			print ("deactivating");
			gameObject.GetComponent<Rotator> ().enabled = false;
			Destroy (gameObject.GetComponent<Rigidbody> ());
			fire = false;
		}
	}

}
