using UnityEngine;

[System.Serializable]
public class Quest : MonoBehaviour {
	public static QuestManager QuestManager;

	public int ID;
	public string Description;

	public void Complete (int id) {
		Quest quest = QuestManager.activeQuests[id];
		QuestManager.activeQuests.Remove(id);
		QuestManager.finishedQuests.Add(id);
	}
}
