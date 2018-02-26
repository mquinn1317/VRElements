using System.Collections;
using UnityEngine;

public class QuestGiverProxemic : MonoBehaviour {

	public Quest Quest;
	public float SquaredActivationDistance;

	// Use this for initialization
	void Start () {
		if (Quest.QuestManager.finishedQuests.Contains(Quest.ID)) {
			GameObject.Destroy(this);
		} else {
			StartCoroutine(CheckPlayerDistance());
		}
	}

	IEnumerator CheckPlayerDistance () {
		while (true) {
			if (Vector3.SqrMagnitude(transform.position - Player.Instance.transform.position) < SquaredActivationDistance) {
				Quest.QuestManager.ActivateQuest(Quest);
				StopCoroutine("CheckPlayerDistance");
			}

			yield return new WaitForSeconds(.1f);
		}
	}
}
