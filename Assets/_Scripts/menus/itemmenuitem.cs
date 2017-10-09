using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class itemmenuitem : MonoBehaviour {

	public GameObject background, text;
	public bool activating, activated, deactivating;
	public int activationcount;
	private float background_alpha;

	public bool selected;

	// Use this for initialization
	void Start () {
		Color tmp;
		GetComponent<RectTransform>().localPosition += new Vector3 (0, 100f, 0 );
		tmp = GetComponent<Image> ().color;
		gameObject.GetComponent<Image> ().color = new Color (tmp.r, tmp.g, tmp.b, 0);
		background.GetComponent<RectTransform> ().localPosition += new Vector3 (0, 100f, 0);
		tmp = background.GetComponent<Image> ().color;
		background.GetComponent<Image> ().color = new Color (tmp.r, tmp.g, tmp.b, 0);
		text.GetComponent<RectTransform> ().localPosition += new Vector3 (0, 100f, 0);
		tmp = text.GetComponent<Text> ().color;
		text.GetComponent<Text> ().color = new Color (tmp.r, tmp.g, tmp.b, 0);
		activating = false;
		deactivating = false;
		activated = false;
		activationcount = 0;
		background_alpha = .73f;
	}
	
	// Update is called once per frame
	void Update () {
		if (activated && selected) {
			GetComponent<Image> ().color = new Color (1, 0, 0);
		} else if (activated){
			GetComponent<Image> ().color = new Color (1, 1, 1);
		}
		if (activating) {
			Color tmp;
			GetComponent<RectTransform> ().localPosition -= new Vector3 (0, 2f, 0);
			tmp = GetComponent<Image> ().color;
			GetComponent<Image> ().color = new Color (tmp.r, tmp.g, tmp.b, tmp.a + .02f);
			background.GetComponent<RectTransform> ().localPosition -= new Vector3 (0, 2f, 0);
			tmp = background.GetComponent<Image> ().color;
			background.GetComponent<Image> ().color = new Color (tmp.r, tmp.g, tmp.b, tmp.a + .02f*background_alpha);
			text.GetComponent<RectTransform> ().localPosition -= new Vector3 (0, 2f, 0);
			tmp = text.GetComponent<Text> ().color;
			text.GetComponent<Text> ().color = new Color (tmp.r, tmp.g, tmp.b, tmp.a + .02f);
			activationcount += 1;
			if (activationcount > 50) {
				activationcount = 0;
				activating = false;
				activated = true;
			}
		}
		if (deactivating) {
			Color tmp;
			activated = false;
			GetComponent<RectTransform> ().localPosition += new Vector3 (0, 2f, 0);
			tmp = GetComponent<Image> ().color;
			GetComponent<Image> ().color = new Color (tmp.r, tmp.g, tmp.b, tmp.a - .02f);
			background.GetComponent<RectTransform> ().localPosition += new Vector3 (0, 2f, 0);
			tmp = background.GetComponent<Image> ().color;
			background.GetComponent<Image> ().color = new Color (tmp.r, tmp.g, tmp.b, tmp.a - .02f * background_alpha);
			text.GetComponent<RectTransform> ().localPosition += new Vector3 (0, 2f, 0);
			tmp = text.GetComponent<Text> ().color;
			text.GetComponent<Text> ().color = new Color (tmp.r, tmp.g, tmp.b, tmp.a - .02f);
			activationcount += 1;
			if (activationcount > 50) {
				activationcount = 0;
				deactivating = false;
			}
		}
	}

}
