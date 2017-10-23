using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class powercellglow : MonoBehaviour {

	public MeshRenderer mr;
	private float x;
	public Material changing;

	// Use this for initialization
	void Start () {
		x = 0;
		mr = gameObject.GetComponent<MeshRenderer> ();
		changing = mr.material;
	}
	
	// Update is called once per frame
	void Update () {
		x += .005f;
		mr.material.SetTextureOffset ("_EmissionMap", new Vector2 (1,1));
	}
}
