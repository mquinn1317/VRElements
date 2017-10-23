using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class bowgrabcollider : MonoBehaviour {

	public EquipmentManager em;
	public GameObject instantiated;
	public GameObject instantiatedchild;
	public GameObject l_hand;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnTriggerEnter(Collider coll){
		if (coll.gameObject.tag == "lhandcoll" && em.equipped [1] != null && l_hand.GetComponent<OVRGrabber>().grabbedObject == null && (!instantiated || instantiated == null || !instantiated.GetComponent<OVRGrabbable>().isGrabbed)) {
			print ("triggerentered");
			instantiated = em.equipped [1];
			instantiated.SetActive (true);
			//instantiated = Instantiate (em.equipped [1], new Vector3(-.01f,0,-.3f), Quaternion.Euler(0,90,0));
			instantiated.transform.position = transform.position;
			instantiated.GetComponent<iteminfo> ().destroyonrelease = true;
			instantiated.transform.parent = transform;
		}
	}
	void OnTriggerExit(Collider coll){
		if (coll.gameObject.tag == "lhandcoll" && em.equipped [1] != null && !instantiated.GetComponent<OVRGrabbable>().isGrabbed) {
			instantiated.SetActive (false);
		}
	}
}
