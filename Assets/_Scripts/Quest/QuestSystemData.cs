[System.Serializable]
public class QuestSystemData {
	public QuestData[] QuestData;

	public QuestSystemData(int maxID) {
		QuestData = new QuestData[maxID];
	}
}
