using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class swordgrabcollider : MonoBehaviour {

	public EquipmentManager em;
	public GameObject instantiated;
	public int index;
	public string handcol;
	public GameObject hand;
	public Vector3 startpos;
	public Quaternion startrot;

	// Use this for initialization
	void Start () {

	}

	// Update is called once per frame
	void Update () {

	}

	void OnTriggerEnter(Collider coll){
		print ("swordOTE: " + coll.gameObject.tag);
		if (coll.gameObject.tag == handcol && em.equipped [index] != null && hand.GetComponent<OVRGrabber>().grabbedObject == null && (!instantiated || instantiated == null || !instantiated.GetComponent<OVRGrabbable>().isGrabbed)) {
			print ("swordtriggerentered");
			instantiated = em.equipped [index];
			instantiated.SetActive (true);
			//instantiated = Instantiate (em.equipped [1], new Vector3(-.01f,0,-.3f), Quaternion.Euler(0,90,0));
			instantiated.transform.position = transform.position + new Vector3(0,-.25f,0) - GameObject.FindGameObjectWithTag("MainCamera").transform.forward * .35f;// + transform.right * -.15f;
			instantiated.transform.localRotation = Quaternion.Euler (0, 90, -135);
			instantiated.GetComponent<iteminfo> ().destroyonrelease = true;
			instantiated.transform.parent = transform;
			instantiated.GetComponent<MeshRenderer> ().enabled = false;
		}
	}

	void OnTriggerExit(Collider coll){
		if (coll.gameObject.tag == handcol && instantiated != null && !instantiated.GetComponent<OVRGrabbable>().isGrabbed) {
			instantiated.transform.position = transform.position + new Vector3(0,-.25f,0) - GameObject.FindGameObjectWithTag("MainCamera").transform.forward * .35f;// + transform.right * -.15f;
			instantiated.transform.localRotation = Quaternion.Euler (0, 90, -135);
			instantiated.SetActive (false);
		}
	}
}
