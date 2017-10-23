using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HobGoblinLimbColliders : MonoBehaviour {

	public HobgoblinBehavior fb;
	public float damagemult;
	// Use this for initialization


	public void OnTriggerEnter(Collider coll){
		print ("LIMB COLLISION");
		print ("collisiontag: " + coll.gameObject.tag);
		if (coll.gameObject.tag == "manipulatable" && (coll.gameObject.transform.parent == null)) {
			if (coll.gameObject.GetComponent<BoulderBehavior> () && coll.gameObject.GetComponent<BoulderBehavior> ().boulderlifetime < .7f) {
				print ("RETURNING");
				return;
			}

			float dam = coll.gameObject.GetComponent<manipulatable>().mass * 4f;
			float randmult = Random.Range (.18f, .23f);
			fb.health -= (int)(dam * randmult * damagemult);
			GameObject newdamage = Instantiate (fb.damageprefab, fb.transform.position + new Vector3 (0, fb.damagedisplacement, 0), Quaternion.identity);
			newdamage.GetComponent<Text> ().text = ((int)(dam * randmult * damagemult)).ToString();
			newdamage.GetComponent<damagecontroller> ().m = 5f;
			newdamage.GetComponent<LookAtTarget> ().target = GameObject.FindGameObjectWithTag ("MainCamera").transform;
			Destroy (coll.gameObject);
		}
		if (coll.gameObject.tag == "sword") {
			print ("HIT");
			float randmult = Random.Range (1.8f, 2.3f);
			if (fb.pm.stamina > 15f && coll.gameObject.GetComponent<swordcontroller> ().gripping) {
				randmult += 1.8f;
				fb.pm.stamina -= 15f;
			}

			float dam = coll.gameObject.GetComponent<iteminfo> ().itemattack * (coll.GetComponent<Rigidbody>().velocity.magnitude/3f + .5f) * fb.pm.attack/2f;
			int total = (int)(dam * randmult * damagemult);
			fb.health -= total;
			total *= 8;
			int capped_total = total;
			if (total > 255) {
				capped_total = 255;
			}
			OVRHapticsClip clip = new OVRHapticsClip (total);
			for (int i = 0; i < total; i++) {
				clip.WriteSample((byte)(capped_total));
			}
			OVRHaptics.RightChannel.Preempt (clip);
			GameObject newdamage = Instantiate (fb.damageprefab, fb.transform.position + new Vector3 (0, fb.damagedisplacement, 0), Quaternion.identity);
			newdamage.GetComponent<Text> ().text = ((int)(dam * randmult * damagemult)).ToString();
			newdamage.GetComponent<damagecontroller> ().m = .05f * dam * randmult * damagemult;
			newdamage.GetComponent<LookAtTarget> ().target = GameObject.FindGameObjectWithTag ("MainCamera").transform;
		}
	}

	public void OnParticleCollision(GameObject other){
		print ("other.tag: " + other.tag);
		if(other.tag == "sparks"){
			fb.health -= 17 * damagemult;
		}
		if (other.tag == "fireball") {
			fb.health -= 25 * damagemult;
		}
	}
}
