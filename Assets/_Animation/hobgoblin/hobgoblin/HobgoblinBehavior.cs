using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HobgoblinBehavior : MonoBehaviour {

	public float dist;
	public float attackcounter;
	public Transform Player;
	public bool walking, activated, attacking, dying, walkadjust, jumping, resume;
	public Animator FrankController;
	public float damagedisplacement;
	public GameObject  damageprefab;
//	Stats!
	public float health, maxhealth;
	public GameObject slider;
	public PlayerManager pm;


	// Use this for initialization
	void Start () {
		pm = GameObject.FindGameObjectWithTag ("playermanager").GetComponent<PlayerManager> ();
		damagedisplacement = 1.5f;
		maxhealth = 1000;
		health = 1000;
		activated = false;
		walking = false;
		jumping = false;
		resume = true;
		walkadjust = false;
		attackcounter = 300;
		AnimationClip cur;
		foreach (AnimationClip ac in FrankController.runtimeAnimatorController.animationClips) {
			cur = ac;
			if (cur.name == "inplace_walk") {
				AnimationEvent evt = new AnimationEvent ();
				evt.functionName = "BeginWalkAdjust";
				evt.time = 1.2f;
				cur.AddEvent (evt);
				evt = new AnimationEvent ();
				evt.functionName = "EndWalkAdjust";
				evt.time = .3f;
				cur.AddEvent (evt);
			}
			if (cur.name == "jumping") {
				AnimationEvent evt = new AnimationEvent ();
				evt.functionName = "EndJump";
				evt.time = 1.84f;
				cur.AddEvent (evt);
				evt = new AnimationEvent ();
				evt.functionName = "BeginJump";
				evt.time = 1.2f;
				cur.AddEvent (evt);
				evt = new AnimationEvent ();
				evt.functionName = "CloseJump";
				evt.time = 2.95f;
				cur.AddEvent (evt);
			}
			if (cur.name == "swiping") {
				AnimationEvent evt = new AnimationEvent ();
				evt.functionName = "EndSwipe";
				evt.time = 2.09f;
				cur.AddEvent (evt);
			}
			if (cur.name == "death") {
				AnimationEvent evt = new AnimationEvent ();
				evt.functionName = "OnDeath";
				evt.time = 3.12f;
				cur.AddEvent (evt);
			}
		}
	}
	
	// Update is called once per frame
	void Update () {
		slider.GetComponent<Slider> ().value = (float)health / (float)maxhealth;
		//gameObject.GetComponent<Rigidbody> ().angularVelocity = new Vector3 (0, 0, 0);
		if (health <= 0) {
			attacking = false;
			walking = false;
			dying = true;
			activated = false;
			FrankController.SetBool ("dying", true);
			FrankController.SetBool ("walking", false);
			FrankController.SetBool ("attacking1", false);
			FrankController.SetBool ("attacking2", false);
		}
		dist = (transform.position - Player.position).magnitude;
		if (!activated && dist < 20 && !dying) {
			activated = true;
		}
		if (activated) {
			Vector3 dir = Player.position - transform.position;
			dir.Normalize ();
			dir.Set (dir.x, 0, dir.z);
			transform.rotation = Quaternion.LookRotation (dir, new Vector3(0,1,0));
			if (!walking && !attacking && resume) {
				FrankController.SetBool ("walking", true);
				FrankController.SetBool ("attacking1", false);
				FrankController.SetBool ("attacking2", false);
				walking = true;
			}
			if (attackcounter > 0) {
				attackcounter -= 1;
			}
			if (walking) {
				transform.position += dir * .055f;
				if (walkadjust) {
					transform.position += dir * .285f;
				}
			}
			if (jumping) {
				transform.position += dir * .18f;
			}
			if (dist < 5) {
				attackcounter = 0;
			}
			if (attackcounter == 0 && dist < 7) {
				walking = false;
				attacking = true;
				FrankController.SetBool ("walking", false);
				if (Random.Range (1.0f, 2000.0f) < 700.0f) {
					FrankController.SetBool ("attacking2", true);
				} else {
					FrankController.SetBool ("attacking1", true);
				}
				attackcounter = 200;
			}
		} else {
			return;
		}
	}

	public void BeginWalkAdjust(){
		walkadjust = true;
	}

	public void EndWalkAdjust() {
		walkadjust = false;
	}

	public void BeginJump(){
		jumping = true;
		resume = false;
		gameObject.GetComponent<Rigidbody> ().AddForce (new Vector3 (0, 220f, 0));
	}

	public void EndJump(){
		FrankController.SetBool ("attacking1", false);
		FrankController.SetBool ("attacking2", false);
		FrankController.SetBool ("walking", true);
		jumping = false;
		walking = false;
		attacking = false;
	}

	public void CloseJump(){
		resume = true;
	}

	public void EndSwipe() {
		FrankController.SetBool ("attacking1", false);
		FrankController.SetBool ("attacking2", false);
		FrankController.SetBool ("walking", true);
		walking = true;
		attacking = false;
	}

	public void OnDeath() {
		Destroy (gameObject);
	}


}
