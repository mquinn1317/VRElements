using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class itemlib : MonoBehaviour {

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

	public Dictionary<int, string> namedict = new Dictionary<int, string>();
	public Dictionary<int, int> attackdict = new Dictionary<int, int>();
	public Dictionary<int, int> typedict = new Dictionary<int, int>();
	public Dictionary<int, int> equipdict = new Dictionary<int, int>();
	public Dictionary<int, float> critdict = new Dictionary<int, float>();
	public Dictionary<int, string> extradict = new Dictionary<int, string>();
	public Dictionary<int, float> attrdict = new Dictionary<int, float>();
	public Dictionary<int, Sprite> imgdict = new Dictionary<int, Sprite> ();
	public Dictionary<int, string> descriptdict = new Dictionary<int, string>();

	public Sprite swordimg, swordlandsimg, bowimg, shortswordimg;

	// Use this for initialization
	void Start () {
		namedict [0] = "Long Sword";
		attackdict [0] = 14;
		typedict [0] = 0;
		equipdict [0] = 3;
		critdict [0] = 5.0f;
		extradict [0] = "+Attack";
		attrdict [0] = 3;
		imgdict [0] = swordimg;
		descriptdict [0] = "A basic long sword. Reliable and sharp.";

		namedict [1] = "Sword of Light and Shadow";
		attackdict [1] = 184;
		typedict [0] = 0;
		equipdict [1] = 13;
		critdict [1] = 45.0f;
		extradict [1] = "+LifeDrain";
		attrdict [1] = 10;
		imgdict [1] = swordlandsimg;
		descriptdict [1] = "Lifelink and deathtouch";

		namedict [2] = "Bow of Nylea";
		attackdict [2] = 40;
		typedict [0] = 1;
		equipdict [2] = 8;
		critdict [2] = 30f;
		extradict [2] = "+Magic";
		attrdict [2] = 7;
		imgdict [2] = bowimg;
		descriptdict [2] = "Tap: Add two +1/+1 counters to target creature";

		namedict [3] = "Short Sword";
		attackdict [3] = 9;
		typedict [3] = 0;
		equipdict [3] = 2;
		critdict [3] = 9f;
		extradict [3] = "+Attack";
		attrdict [3] = 5;
		imgdict [3] = shortswordimg;
		descriptdict[3] = "A short sword. Useful for hitting weak points.";

		namedict [4] = "Arcbound Ravager";
		attackdict [4] = 25;
		typedict [4] = 0;
		equipdict [4] = 7;
		critdict [4] = 23f;
		extradict [4] = "+Lightning Damage";
		attrdict [4] = 5;
		imgdict [4] = shortswordimg;
		descriptdict[4] = "Grabbing the hilt feels like shoving a fork in a power outlet. Small price to pay given what it does to your enemies.";
	
		namedict [5] = "Glacialis";
		attackdict [5] = 35;
		typedict [5] = 0;
		equipdict [5] = 3;
		critdict [5] = 40f;
		extradict [5] = "+Ice Damage";
		attrdict [5] = 10;
		imgdict [5] = shortswordimg;
		descriptdict [5] = "Frostmourn ripoff. No regerts";
	
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
