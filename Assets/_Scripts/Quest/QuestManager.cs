using System.Collections.Generic;
using UnityEngine;

public class QuestManager : MonoBehaviour {

	public Dictionary<string, Quest> activeQuests;

	private OVRPlayerController player;
	public OVRPlayerController Player {get {return player;}}

	void Awake () {
		player = GameObject.Find("OVRPlayerController").GetComponent<OVRPlayerController>();
	}

	// Use this for initialization
	void Start () {
		activeQuests = new Dictionary<string, Quest>();
	}

	public Quest tq;
	public void LoadQuest(string name) {
		//Could make Quest serializable and inherit from System.Object. Create QuestComponent class that holds a quest.
		//Load the class and get its Quest (as a copy if needed for prefab to be GCed).
		Quest quest = (Resources.Load("Quests/" + name) as GameObject).GetComponent<Quest>();
		activeQuests.Add(name, quest);
	}

	public void CompleteQuest (string name) {
		Quest quest = activeQuests[name];
		activeQuests.Remove(name);
	}
}
