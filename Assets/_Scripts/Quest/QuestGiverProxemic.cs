using System.Collections;
using UnityEngine;

public class QuestGiverProxemic : MonoBehaviour {

	public string quest;
	public float activationDistance;

	private QuestManager qm;

	void Awake () {
		qm = GameObject.Find("QuestManager").GetComponent<QuestManager>();
	}

	// Use this for initialization
	void Start () {
		StartCoroutine(CheckPlayerDistance());
	}

	IEnumerator CheckPlayerDistance () {
		while (true) {
			if (Vector3.Distance(transform.position, qm.Player.transform.position) < activationDistance) {
				qm.LoadQuest(quest);
				StopCoroutine("CheckPlayerDistance");
			}

			yield return new WaitForSeconds(.1f);
		}
	}
}
