using UnityEngine;
using UnityEngine.UI;

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

	private Text text;

	void Awake () {
		if (pages == null) Debug.LogError("Dialogue data not set");

		text = transform.Find("Text").GetComponent<Text>();
		player = GameObject.Find("OVRPlayerController");
	}

	// Use this for initialization
	void Start () {
		if (attachedTo == null) Debug.LogError("Dialogue was not attached to a target after instantiation");

		current = pages[0];
		UpdateText();
	}

	// Update is called once per frame
	void Update () {
		UpdateTransform();

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
			UpdateText();
		}
	}

	private void UpdateText() {
		text.text = current.text;
		for (int i = 0; i < current.responseText.Length; i++) {
			text.text += ("\n" + current.responseText[i]);
		}
	}

	public float yOffset;
	public float xzOffset;
	private void UpdateTransform() {
		//Position
		Vector3 attachedToSource = attachedTo.transform.position - player.transform.position;
		attachedToSource.y = 0;
		attachedToSource.Normalize();

		float lookAngle = Vector3.SignedAngle(player.transform.forward, attachedToSource, Vector3.up);

		Vector3 xzOffsetVector;
		if (lookAngle > 0) {
			xzOffsetVector = Quaternion.Euler(0, 270, 0) * attachedToSource;
		} else {
			xzOffsetVector = Quaternion.Euler(0, 90, 0) * attachedToSource;
		}

		transform.position = attachedTo.transform.position + xzOffset * xzOffsetVector + yOffset * Vector3.up;

		//Rotate

		Vector3 fromSource = player.transform.position - transform.position;
		fromSource.y = 0;
		float rotateAngle = Vector3.SignedAngle(Vector3.back, fromSource, Vector3.up);

		transform.rotation = Quaternion.Euler(0, rotateAngle, 0);
	}
}
