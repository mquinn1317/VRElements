using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIPush : MonoBehaviour {

	public float displacement, displaced;
	public Vector2 direction;

	public bool activating;
	public int activationcount;

	public List<GameObject> to_push;

	// Use this for initialization
	void Start () {
		activating = false;
		activationcount = 0;
		displaced = 0;
	}
	
	// Update is called once per frame
	void Update () {
		if (activating && displaced < displacement) {
			displaced += .2f;
			foreach (GameObject o in to_push) {
				o.GetComponent<RectTransform> ().localPosition += new Vector3 (direction.x, direction.y, 0);
			}
			if (displaced >= displacement) {
				activating = false;
				displaced = 0;
			}
		}
	}
}
