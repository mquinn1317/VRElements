using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EnemyController : MonoBehaviour {

	public Transform target;
	Rigidbody rb;
	public int health;
	public int maxhealth;
	public GameObject slider;
	public bool selected;
	public GameObject selector;
	private PlayerManager pm;
	public float damagedisplacement;

	// Use this for initialization
	void Start () {
		damagedisplacement = .8f;
		pm = GameObject.FindGameObjectWithTag ("playermanager").GetComponent<PlayerManager> ();
		target = GameObject.FindGameObjectWithTag ("Player").transform;
		rb = GetComponent<Rigidbody> ();
		health = 30;
		maxhealth = 30;
	}
	
	// Update is called once per frame
	void Update () {
		if (selected) {
			selector.SetActive (true);
			float mag = (target.position - transform.position).magnitude; 
			if (mag > 20) {
				selector.GetComponent<RectTransform> ().localScale = new Vector3 (.0102f, .0102f, .0102f);
			} else {
				selector.GetComponent<RectTransform> ().localScale = new Vector3 (.0002f + (mag / 2000f), .0002f + (mag / 2000f), .0002f + (mag / 2000f));
			}
		} else {
			selector.SetActive (false);
		}
		if (rb.velocity.magnitude < 7) {
			transform.LookAt (target);
			Vector3 to_add = target.position - transform.position;
			to_add.Normalize ();
			rb.AddForce (to_add*1640*Time.deltaTime);
		}
		slider.GetComponent<Slider> ().value = (float)health / (float)maxhealth;
		if (health <= 0) {
			pm.experience += 10*pm.scale;
			pm.expslider.GetComponent<Slider> ().value = pm.experience / (pm.level * pm.scale);
			Destroy (gameObject);
		}
	}

	void OnCollisionEnter(Collision coll){
//		print (coll.gameObject.tag);
		if (coll.gameObject.tag == "sword") {
//			print ("health decreased");
			health -= (int)(coll.relativeVelocity.magnitude*.2f*coll.gameObject.GetComponent<iteminfo>().itemattack);
			Vector3 to_add = transform.position - target.position;
			to_add.Normalize ();
			rb.AddForce (to_add * 8);
		}
		if (coll.gameObject.tag == "manipulatable" && coll.gameObject.GetComponent<Rigidbody>() && coll.gameObject.GetComponent<Rigidbody>().velocity.magnitude > .5f) {
			pm.experience += 10*pm.scale;
			pm.expslider.GetComponent<Slider> ().value = pm.experience / (pm.level * pm.scale);
			Destroy (gameObject);
		}
	}

//	void OnCollisionStay(Collision coll){
//		print (coll.gameObject.tag);
//	}

}
