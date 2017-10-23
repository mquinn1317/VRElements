using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Actuator : MonoBehaviour {

	public bool activating, activated, deactivating, deactivated;
	public int activationcount;

	public float actuationspeed;
	public float displacement;
	public Vector2 direction;

	public List<GameObject> texts;
	public List<GameObject> images;
	public List<bool> textcoloronly;
	public List<bool> imagecoloronly;
	public List<Vector3> textpositions;
	public List<Vector3> imagepositions;
	public List<float> textmaxalpha;
	public List<float> imagemaxalpha;

	private int frames;

	// Use this for initialization
	void Start () {
		direction.Normalize ();
		frames = (int)(200 / actuationspeed)+1;
		Color tmp;
		foreach (GameObject o in texts) {
			textpositions.Add(o.GetComponent<RectTransform>().localPosition);
			tmp = o.GetComponent<Text> ().color;
			o.GetComponent<Text> ().color = new Color (tmp.r, tmp.g, tmp.b, 0);
			if (!textcoloronly [texts.IndexOf (o)]) {
				o.GetComponent<RectTransform> ().localPosition += new Vector3 (displacement * direction.x, displacement * direction.y, 0);
			}
		}
		foreach (GameObject o in images) {
			imagepositions.Add(o.GetComponent<RectTransform>().localPosition);
			tmp = o.GetComponent<Image> ().color;
			o.GetComponent<Image> ().color = new Color (tmp.r, tmp.g, tmp.b, 0);
			if (!imagecoloronly [images.IndexOf (o)]) {
				o.GetComponent<RectTransform> ().localPosition += new Vector3 (displacement * direction.x, displacement * direction.y, 0);
			}
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (activating) {
			if (activated) {
				activating = false;
			}
			deactivated = false;
			Color tmp;
			foreach (GameObject o in texts) {
				if (!textcoloronly [texts.IndexOf (o)]) {
					o.GetComponent<RectTransform> ().localPosition -= new Vector3 (direction.x * displacement / frames, direction.y * displacement / frames, 0);
				}
				tmp = o.GetComponent<Text> ().color;
				o.GetComponent<Text> ().color = new Color (tmp.r, tmp.g, tmp.b, tmp.a + (1.0f / (float)frames) * textmaxalpha [texts.IndexOf (o)]);
			}
			foreach (GameObject o in images) {
				if (!imagecoloronly [images.IndexOf (o)]) {
					o.GetComponent<RectTransform> ().localPosition -= new Vector3 (direction.x * displacement / frames, direction.y * displacement / frames, 0);
				}
				tmp = o.GetComponent<Image> ().color;
				o.GetComponent<Image> ().color = new Color (tmp.r, tmp.g, tmp.b, tmp.a + (1.0f / (float)frames) * imagemaxalpha [images.IndexOf (o)]);
			}
			activationcount += 1;
			if (activationcount > frames) {
				activationcount = 0;
				activating = false;
				activated = true;
				for (int i = 0; i < texts.Count; i++) {
					texts [i].GetComponent<RectTransform> ().localPosition = textpositions [i];
					tmp = texts[i].GetComponent<Text>().color;
					texts[i].GetComponent<Text>().color = new Color(tmp.r, tmp.g, tmp.b, textmaxalpha[i]);
				}
				for (int i = 0; i < images.Count; i++) {
					images[i].GetComponent<RectTransform> ().localPosition = imagepositions [i];
					tmp = images[i].GetComponent<Image>().color;
					images[i].GetComponent<Image>().color = new Color(tmp.r, tmp.g, tmp.b, imagemaxalpha[i]);
				}
			}
		}
		if (deactivating) {
			if (deactivated) {
				deactivating = false;
			}
			activated = false;
			Color tmp;
			foreach (GameObject o in texts) {
				if (!textcoloronly [texts.IndexOf (o)]) {
					o.GetComponent<RectTransform> ().localPosition += new Vector3 (direction.x * displacement / frames, direction.y * displacement / frames, 0);
				}
				tmp = o.GetComponent<Text> ().color;
				o.GetComponent<Text> ().color = new Color (tmp.r, tmp.g, tmp.b, tmp.a - (1.0f / (float)frames) * textmaxalpha [texts.IndexOf (o)]);
			}
			foreach (GameObject o in images) {
				if (!imagecoloronly [images.IndexOf (o)]) {
					o.GetComponent<RectTransform> ().localPosition += new Vector3 (direction.x * displacement / frames, direction.y * displacement / frames, 0);
				}
				tmp = o.GetComponent<Image> ().color;
				o.GetComponent<Image> ().color = new Color (tmp.r, tmp.g, tmp.b, tmp.a - (1.0f / (float)frames) * imagemaxalpha [images.IndexOf (o)]);
			}
			activationcount += 1;
			if (activationcount > frames) {
				activationcount = 0;
				activating = false;
				deactivated = true;
			}
		}

	}
}
