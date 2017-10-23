using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class spawner : MonoBehaviour {

	public GameObject spawn;
	int counter = 0;
	[Range(60,2000)]
	public int spawnrate;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		counter += 1;
		if (counter > spawnrate) {
			counter = 0;
			GameObject newenemy = Instantiate (spawn, transform.position, Quaternion.identity);
			if (spawn.tag == "enemy") {
				newenemy.GetComponent<EnemyController> ().target = GameObject.FindGameObjectWithTag ("Player").transform;
			} else if (spawn.tag == "skull") {
				newenemy.GetComponent<SkullController> ().target = GameObject.FindGameObjectWithTag ("Player").transform;
			}
		}
	}
}
