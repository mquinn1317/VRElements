using UnityEngine;

[System.Serializable]
public class Quest : MonoBehaviour {
	public static QuestManager QuestManager;

	public int ID;
	public string Description;

	public void Complete () {
		QuestManager.CompleteQuest(this);
	}
}
