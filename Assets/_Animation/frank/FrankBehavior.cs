using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FrankBehavior : MonoBehaviour {

	public float height, dist;
	public float walkspeed, attackcounter, bouldercounter;
	public Transform Player, boulderparent;
	public bool walking, activated, attacking, dying;
	public Animator FrankController;
	public float frankadjust;
	public bool frankadjusting;
	public GameObject chesttransform;
	public float damagedisplacement;
	public GameObject boulder, boulderprefab, damageprefab;
	public Collider[] colls;
//	Stats!
	public float health, maxhealth;
	public GameObject slider;
	public PlayerManager pm;


	// Use this for initialization
	void Start () {
		pm = GameObject.FindGameObjectWithTag ("playermanager").GetComponent<PlayerManager> ();
		bouldercounter = 0;
		boulderparent = boulder.transform.parent;
		damagedisplacement = 13f;
		maxhealth = 1000;
		health = 1000;
		frankadjusting = false;
		frankadjust = 10.7f;
		activated = false;
		height = transform.position.y;
		walking = false;
		attackcounter = 300;
		AnimationClip cur;
		foreach (AnimationClip ac in FrankController.runtimeAnimatorController.animationClips) {
			cur = ac;
			if (cur.length > 3.6999f && cur.length < 3.7001f) {
				AnimationEvent evt = new AnimationEvent ();
				evt.functionName = "FrankJumps";
				evt.time = 3.43f;
				cur.AddEvent (evt);
			}
			if (cur.length > 3.9999f && cur.length < 4.0001f) {
				AnimationEvent evt = new AnimationEvent ();
				evt.functionName = "EndThrow";
				evt.time = 3.47f;
				cur.AddEvent (evt);
				evt = new AnimationEvent ();
				evt.functionName = "BoulderRelease";
				evt.time = 1.3f;
				cur.AddEvent (evt);
			}
			if (cur.name == "death") {
				AnimationEvent evt = new AnimationEvent ();
				evt.functionName = "OnDeath";
				evt.time = 3.87f;
				cur.AddEvent (evt);
			}
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (dying && boulder) {
			boulder.transform.parent = null;
			boulder.AddComponent<Rigidbody> ();
		}
		if (bouldercounter > 0) {
			bouldercounter -= 1;
			if (bouldercounter == 0) {
				print ("boulder instantiated");
				boulder = Instantiate (boulderprefab, boulderparent.position, boulderparent.rotation);
				boulder.transform.parent = boulderparent;
				boulder.transform.localPosition = new Vector3 (.00058f, -.0007f, .00171f);
				boulder.transform.localScale = new Vector3 (.00041039f, .00041038f, .00041039f);
			}
		}
		slider.GetComponent<Slider> ().value = (float)health / (float)maxhealth;
		gameObject.GetComponent<Rigidbody> ().angularVelocity = new Vector3 (0, 0, 0);
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
		if (!activated && dist < 50 && !dying) {
			activated = true;
		}
		if (activated) {
			if (frankadjusting) {
				transform.position += transform.forward*44.5f*Time.deltaTime;
				frankadjust -= 44.5f*Time.deltaTime;
				if (frankadjust < 0) {
					frankadjust = 10.7f;
					frankadjusting = false;
					walking = true;
					attacking = false;
					FrankController.SetBool ("attacking1", false);
					FrankController.SetBool ("attacking2", false);
					FrankController.SetBool ("walking", true);
					walking = true;
					attacking = false;
				}
			}
			Vector3 dir = Player.position - transform.position;
			dir.Normalize ();
			dir.Set (dir.x, 0, dir.z);
			transform.rotation = Quaternion.LookRotation (dir, new Vector3(0,1,0));
			if (!walking && !attacking) {
				FrankController.SetBool ("walking", true);
				FrankController.SetBool ("attacking1", false);
				FrankController.SetBool ("attacking2", false);
				walking = true;
			}
			if (attackcounter > 0) {
				attackcounter -= 1;
			}
			if (walking) {
				transform.position += dir * .12f;
			}
			if (attackcounter == 0 && dist < 15) {
				walking = false;
				attacking = true;
				FrankController.SetBool ("walking", false);
				FrankController.SetBool ("attacking1", true);
				attackcounter = 300;
			} else if (attackcounter == 0 && dist < 55 && bouldercounter == 0) {
				print ("Entering bouldercounter == 0 area");
				walking = false;
				attacking = true;
				FrankController.SetBool ("walking", false);
				FrankController.SetBool ("attacking2", true);
				attackcounter = 300;
			}
		} else {
			return;
		}
	}


	public void FrankJumps(){
		frankadjusting = true;
	}

	public void EndThrow() {
		FrankController.SetBool ("attacking1", false);
		FrankController.SetBool ("attacking2", false);
		FrankController.SetBool ("walking", true);
		walking = true;
		attacking = false;
	}

	public void BoulderRelease() {
		if (boulder != null) {
			boulder.transform.parent = null;
			boulder.GetComponent<BoulderBehavior> ().fire = true;
			boulder.GetComponent<BoulderBehavior> ().boulderlifetime = 0f;
			boulder.AddComponent<Rigidbody> ();
			boulder.GetComponent<Rigidbody> ().useGravity = false;
			boulder = null;
			bouldercounter = 500;
		}
	}

	public void OnDeath() {
		Destroy (gameObject);
	}

	public void OnCollisionEnter(Collision coll){
		print ("collisiontag: " + coll.gameObject.tag);
		if (coll.gameObject.tag == "manipulatable" && (coll.gameObject.transform.parent == null || coll.gameObject.transform.parent.position != boulderparent.position)) {
			if (coll.gameObject.GetComponent<BoulderBehavior> () && coll.gameObject.GetComponent<BoulderBehavior> ().boulderlifetime < .7f) {
				print ("RETURNING");
				return;
			}

			float dam = coll.gameObject.GetComponent<manipulatable>().mass * 4f;
			float randmult = Random.Range (.18f, .23f);
			health -= (int)(dam * randmult);
			GameObject newdamage = Instantiate (damageprefab, transform.position + new Vector3 (0, damagedisplacement, 0), Quaternion.identity);
			newdamage.GetComponent<Text> ().text = ((int)(dam * randmult)).ToString();
			newdamage.GetComponent<damagecontroller> ().m = 5f;
			newdamage.GetComponent<LookAtTarget> ().target = GameObject.FindGameObjectWithTag ("MainCamera").transform;
			Destroy (coll.gameObject);
		}
		if (coll.gameObject.tag == "sword") {
			print ("HIT");
			float randmult = Random.Range (.18f, .23f);
			if (pm.stamina > 15f && coll.gameObject.GetComponent<swordcontroller> ().gripping) {
				randmult += 1.8f;
				pm.stamina -= 15f;
			}

			float dam = coll.gameObject.GetComponent<iteminfo> ().itemattack * (coll.relativeVelocity.magnitude/3f + .5f) * pm.attack/2f;
			int total = (int)(dam * randmult);
			health -= total;
			total *= 8;
			if (total > 255) {
				total = 255;
			}
			OVRHapticsClip clip = new OVRHapticsClip (total);
			for (int i = 0; i < total; i++) {
				clip.WriteSample((byte)(total));
			}
			OVRHaptics.RightChannel.Preempt (clip);
			GameObject newdamage = Instantiate (damageprefab, transform.position + new Vector3 (0, damagedisplacement, 0), Quaternion.identity);
			newdamage.GetComponent<Text> ().text = ((int)(dam * randmult)).ToString();
			newdamage.GetComponent<damagecontroller> ().m = .05f * dam * randmult;
			newdamage.GetComponent<LookAtTarget> ().target = GameObject.FindGameObjectWithTag ("MainCamera").transform;
		}
	}

	public void OnParticleCollision(GameObject other){
		print ("other.tag: " + other.tag);
		if(other.tag == "sparks"){
			health -= 17;
		}
		if (other.tag == "fireball") {
			health -= 25;
		}
	}
}
