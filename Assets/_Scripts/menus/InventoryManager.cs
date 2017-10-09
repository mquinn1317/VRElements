using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InventoryManager : MonoBehaviour {

	//	Sword : 0
	//	Bow : 1
	//	Helmet : 2
	//	Torso : 3
	//	Shield : 4
	//	Legs : 5
	//	Boots : 6
	//	Wrists : 7
	//	Shoulders : 8
	//	Amulet : 9
	//	Ring : 10
	//	Staff : 11
	//	Wand : 12
	//	Axe : 13

	public int itemidcounter = 0;
	public List<GameObject> swords;
	public List<GameObject> bows;
	public List<GameObject> helmets;
	public List<GameObject> torsos;
	public List<GameObject> shields;
	public List<GameObject> legs;
	public List<GameObject> boots;
	public List<GameObject> wrists;
	public List<GameObject> shoulders;
	public List<GameObject> amulets;
	public List<GameObject> rings;
	public List<GameObject> staffs;
	public List<GameObject> wands;
	public List<GameObject> axes;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
