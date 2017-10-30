using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

using System.Collections.Generic;

public class Dialogue : MonoBehaviour {
	/*
		To Do

		* Implement threshold for flipping offset rotation to prevent rapid flipping when looking directly at dialogue.
	*/

	[SerializeField]
	private Page[] pages;
	private Page current;
	[SerializeField]
	private GameObject attachedTo;
	private GameObject player;
	private GameObject camera;
	private GraphicRaycaster graphicRaycaster;

	private Transform pageLayoutTransform;
	private Text pageText;
	private Text responseTextPrefab;
	private Text[] responseText = new Text[0];

	public Text selectedText;

	void Awake () {
		if (pages == null) Debug.LogError("Dialogue data not set");

		graphicRaycaster = GetComponent<GraphicRaycaster>();
		responseTextPrefab = (Resources.Load("Dialogue/TextPrefab") as GameObject).GetComponent<Text>();
		pageLayoutTransform = transform.Find("TextLayout");
		pageText = transform.Find("TextLayout/Page Text").GetComponent<Text>();
		player = GameObject.Find("OVRPlayerController");
		camera = player.transform.Find("OVRCameraRig/TrackingSpace/CenterEyeAnchor");
	}

	// Use this for initialization
	void Start () {
		if (attachedTo == null) Debug.LogError("Dialogue was not attached to a target after instantiation");

		current = pages[0];

		CreateResponseText();
		UpdateText();
	}

	// Update is called once per frame
	void Update () {
		UpdateTransform();

		PointerEventData data = new PointerEventData(null);
		data.position = camera.transform.forward;
		List<RaycastResult> results = new List<RaycastResult>();
		graphicRaycaster.Raycast(data, results);
		if (results.Count > 0) {
			if (selectedText) selectedText.color = Color.black;
			selectedText = results[0];
			selectedText.color = Color.red;
		}

		if (current.responseText.Length > 0) {
			if (Input.GetKeyDown("1")) ChooseResponse(0);
			if (Input.GetKeyDown("2")) ChooseResponse(1);
			if (Input.GetKeyDown("3")) ChooseResponse(2);
		}
	}

	public void Attach (GameObject gameObject) {
		attachedTo = gameObject;
	}

	public void ChooseResponse(int index) {
		if (index >= current.responseDialogueIndex.Length) Debug.LogError("Chose invalid response.");

		int newPageIndex = current.responseDialogueIndex[index];
		if (newPageIndex == -1) GameObject.Destroy(this.gameObject);
		else {
			current = pages[newPageIndex];
			CreateResponseText();
			UpdateText();
		}
	}

	private void UpdateText() {
		pageText.text = current.text;

		for (int i = 0; i < current.responseText.Length; i++) {
			responseText[i].text = current.responseText[i];
		}
	}

	private void CreateResponseText() {
		//Update array to new size
		if (responseText.Length < current.responseText.Length) {
			Text[] newResponseText = new Text[current.responseText.Length];
			System.Array.Copy(responseText, newResponseText, responseText.Length);
			for (int i = responseText.Length; i < newResponseText.Length; i++) {
				newResponseText[i] = GameObject.Instantiate(responseTextPrefab, pageLayoutTransform);
			}
			responseText = newResponseText;
		} else if (responseText.Length > current.responseText.Length) {
			Text[] newResponseText = new Text[current.responseText.Length];
			System.Array.Copy(responseText, newResponseText, newResponseText.Length);
			for (int i = newResponseText.Length; i < responseText.Length; i++) GameObject.Destroy(responseText[i].gameObject);
			responseText = newResponseText;
		}
	}

	public float yOffset;
	public float xzOffset;
	private bool thresholdPositive;
	private static float flipThreshold = 10;
	private void UpdateTransform() {
		//Position
		Vector3 attachedToSource = attachedTo.transform.position - player.transform.position;
		attachedToSource.y = 0;
		attachedToSource.Normalize();

		float lookAngle = Vector3.SignedAngle(player.transform.forward, attachedToSource, Vector3.up);

		Vector3 xzOffsetVector;
		if (thresholdPositive) {
			if (lookAngle < -flipThreshold) {
				xzOffsetVector = Quaternion.Euler(0, 90, 0) * attachedToSource;
				thresholdPositive = false;
			} else {
				xzOffsetVector = Quaternion.Euler(0, 270, 0) * attachedToSource;
			}
		} else {
			if (lookAngle > flipThreshold) {
				xzOffsetVector = Quaternion.Euler(0, 270, 0) * attachedToSource;
				thresholdPositive = true;
			} else {
				xzOffsetVector = Quaternion.Euler(0, 90, 0) * attachedToSource;
			}
		}

		transform.position = attachedTo.transform.position + xzOffset * xzOffsetVector + yOffset * Vector3.up;

		//Rotate

		Vector3 fromSource = player.transform.position - transform.position;
		fromSource.y = 0;
		float rotateAngle = Vector3.SignedAngle(Vector3.back, fromSource, Vector3.up);

		transform.rotation = Quaternion.Euler(0, rotateAngle, 0);
	}
}
