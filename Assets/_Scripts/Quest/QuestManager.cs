using System.Collections.Generic;
using UnityEngine;
using System.Collections;
using System.IO;  

public class QuestManager : MonoBehaviour {
	public QuestSystemData questSystemData;

	private string questSystemDataProjectFilePath = "/Streaming Assets/QuestSystem.json";

	public List<Quest> activeQuests;
	public List<int> finishedQuests;

	private const int QuestCount = 1000;

	private void Awake () {
		Quest.QuestManager = this;

		activeQuests = new List<Quest>();
		finishedQuests = new List<int>();
	}

	private void Start () {
		DontDestroyOnLoad(gameObject);

		LoadQuestSystemData();
	}

	/// <summary>
	/// Loads the quest system data, if it exists.
	/// </summary>
	private void LoadQuestSystemData () {
        string filePath = Application.dataPath + questSystemDataProjectFilePath;

        if (File.Exists (filePath)) {
            string dataAsJson = File.ReadAllText (filePath);
            QuestSystemData questSystemData = JsonUtility.FromJson<QuestSystemData> (dataAsJson);

            foreach (QuestData qd in questSystemData.QuestData) {
            	if (qd.Active) {
					Quest questPrefab = (Resources.Load("Quests/" + qd.Name) as GameObject).GetComponent<Quest>();
					//Quest quest = GameObject.Instantiate(questPrefab, this.transform);
					activeQuests.Add(questPrefab);
            	} else if (qd.Completed) {
					Quest questPrefab = (Resources.Load("Quests/" + qd.Name) as GameObject).GetComponent<Quest>();
					finishedQuests.Add(questPrefab.ID);
            	}
            }
        }
    }

    /// <summary>
    /// Saves the quest system data.
    /// </summary>
    private void SaveQuestSystemData () {
		//Create data object
		QuestSystemData questSystemData = new QuestSystemData(QuestCount);

		//Set data
        foreach (Quest q in activeQuests) {
        	QuestData qd = questSystemData.QuestData[q.ID];
        	qd.Active = true;
        	qd.Name = gameObject.name;
        }
        foreach (int questID in finishedQuests) {
			QuestData qd = questSystemData.QuestData[questID];
        	qd.Completed = true;
        }

        //Write data
		string questSystemDataFilePath = Application.dataPath + questSystemDataProjectFilePath;
        string dataAsJson = JsonUtility.ToJson (questSystemData);
		File.WriteAllText(questSystemDataFilePath, dataAsJson);
    }

    public void ActivateQuest (Quest quest) {
    	activeQuests.Add(quest);
    }

    public void CompleteQuest (Quest quest) {
		activeQuests.Remove(quest);
		finishedQuests.Add(quest.ID);
    }
}
