using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class itemstatscreen : MonoBehaviour {

	public GameObject bg;
	public GameObject[] textfadein;
	public bool activated, activating, deactivating;
	public int activationcount;

	// Use this for initialization
	void Start () {
		activated = false;
		activating = false;
		deactivating = false;
		activationcount = 0;
		transform.position += transform.right * .4f;
		foreach (GameObject o in textfadein) {
			o.GetComponent<Text> ().color = new Color (1, 1, 1, 0);
		}
		Color tmp;
		tmp = bg.GetComponent<Image> ().color;
		bg.GetComponent<Image> ().color = new Color (tmp.r, tmp.g, tmp.b, 0);
	}
	
	// Update is called once per frame
	void Update () {
		if (activating) {
			transform.position -= transform.right * .004f;
			Color tmp;
			foreach (GameObject o in textfadein) {
				tmp = o.GetComponent<Text> ().color;
				o.GetComponent<Text> ().color = new Color (tmp.r, tmp.g, tmp.b, tmp.a + .01f);
			}
			tmp = bg.GetComponent<Image> ().color;
			bg.GetComponent<Image> ().color = new Color (tmp.r, tmp.g, tmp.b, tmp.a + .0065f);
			activationcount += 1;
			if (activationcount > 100) {
				activationcount = 0;
				activating = false;
				activated = true;
				Time.timeScale = .00001f;
			}
		}
		if (deactivating) {
			transform.position += transform.right * .004f;
			Color tmp;
			foreach (GameObject o in textfadein) {
				tmp = o.GetComponent<Text> ().color;
				o.GetComponent<Text> ().color = new Color (tmp.r, tmp.g, tmp.b, tmp.a - .01f);
			}
			tmp = bg.GetComponent<Image> ().color;
			bg.GetComponent<Image> ().color = new Color (tmp.r, tmp.g, tmp.b, tmp.a - .0065f);
			activationcount += 1;
			if (activationcount > 100) {
				activationcount = 0;
				deactivating = false;
				activated = false;
			}
		}
	}

	public void UpdateScreen(string name, int attack, int equip, float crit, string attr, float attrval){
		textfadein [0].GetComponent<Text> ().text = name;
		textfadein [2].GetComponent<Text> ().text = attack.ToString();
		textfadein [3].GetComponent<Text> ().text = equip.ToString();
		textfadein [6].GetComponent<Text> ().text = crit.ToString();
		textfadein [8].GetComponent<Text> ().text = attr;
		textfadein [7].GetComponent<Text> ().text = attrval.ToString();
	}
}
