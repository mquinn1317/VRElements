using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SkullController : MonoBehaviour {

	public Transform target;
	Rigidbody rb;
	public int health;
	public int maxhealth;
	public GameObject slider;
	public bool selected;
	public GameObject selector;
	bool up;
	float upcount = 0;
	public float damagedisplacement;

	// Use this for initialization
	void Start () {
		damagedisplacement = .8f;
		target = GameObject.FindGameObjectWithTag ("Player").transform;
		rb = GetComponent<Rigidbody> ();
		health = 50;
		maxhealth = 50;
	}

	// Update is called once per frame
	void Update () {
		rb.velocity *= .99f;
		if (up) {
			upcount += .04f;
			if (upcount > .4f) {
				up = !up;
			}
		} else {
			upcount -= .04f;
			if (upcount < -.4f) {
				up = !up;
			}
		}
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
		transform.LookAt (target);
		if (rb.velocity.magnitude < 9) {
			Vector3 to_add = target.position - transform.position;
			to_add.Normalize ();
			to_add += new Vector3 (0, upcount, 0);
			if (Vector3.Angle (rb.velocity, target.position - transform.position) > 130) {
				rb.AddForce (to_add * 820 * Time.deltaTime);
			} else {
				rb.AddForce (to_add * 320 * Time.deltaTime);
			}
		} 
		slider.GetComponent<Slider> ().value = (float)health / (float)maxhealth;
		if (health <= 0) {
			Player.Instance.experience += 20;
			Player.Instance.expslider.GetComponent<Slider> ().value = Player.Instance.experience / (Player.Instance.level * Player.Instance.scale);
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
			Player.Instance.experience += 20;
			Player.Instance.expslider.GetComponent<Slider> ().value = Player.Instance.experience / (Player.Instance.level * Player.Instance.scale);
			Destroy (gameObject);
		}
	}

	//	void OnCollisionStay(Collision coll){
	//		print (coll.gameObject.tag);
	//	}

}
