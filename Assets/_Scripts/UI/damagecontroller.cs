using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class damagecontroller : MonoBehaviour {

	private float lifetime;
	private Text t;
	public Gradient g;
	public float life, speed, m;
	public Vector3 basescale;
	public Transform Player;

	// Use this for initialization
	void Start () {
		Player = GameObject.FindGameObjectWithTag ("Player").transform;
		t = GetComponent<Text> ();
		basescale = transform.localScale;
	}
	
	// Update is called once per frame
	void Update () {
		lifetime += 1f;
		float dist = (Player.position - transform.position).magnitude;
		float mult = 1.8f*m;
		if (dist > 40f) {
			mult = (dist - 40) * .02f + 1.8f;
			mult *= m;
		}
		if (dist > 100f) {
			mult = 3f * m;
		}
		transform.localScale = basescale * mult;
		transform.position += new Vector3 (0, speed, 0);
		t.color = g.Evaluate (lifetime / (life+1f));
		if (lifetime >= life) {
			Destroy (gameObject);
			//lifetime = 0;
		}
	}
}
