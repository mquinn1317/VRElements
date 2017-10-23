using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerManager : MonoBehaviour {

	public GameObject Player;
	public MenuController menu;
	public float maxhealth, health, experience;
	public float mana, manaregen, maxmana;
	public float stamina, staminaregen, maxstamina;
	public float scale;
	public int level;
	public int attack, defense, speed, sp, regencounter, manacounter;
	public Text attackVal, defenseVal, speedVal, spval, levelval;
	public GameObject healthslider, expslider, manaslider, staminaslider;
	public GameObject jumpaudioprefab;

	public bool abutton_prevFlex;
	public bool areleased;

	// Use this for initialization
	void Start () {
		areleased = true;
		scale = 15;
		attack = 4;
		defense = 3;
		speed = 3;
		sp = 0;
		regencounter = 0;
		manacounter = 0;
		manaregen = 2;
		level = 1;
		maxhealth = 200;
		maxmana = 100;
		mana = 100;
		health = 180;
		experience = 0;
		stamina = 180;
		maxstamina = 200;
		staminaregen = 3;
	}
	
	// Update is called once per frame
	void Update () {
		abutton_prevFlex = OVRInput.Get (OVRInput.RawButton.A);
		if (!abutton_prevFlex) {
			areleased = true;
		}
		if (abutton_prevFlex && areleased) {
			areleased = false;
			Player.GetComponent<OVRPlayerController> ().Jump ();
			GameObject jumpaudio = Instantiate (jumpaudioprefab, Player.transform.position, Player.transform.rotation);
			Destroy (jumpaudio, 1f);
			jumpaudio.GetComponent<AudioSource> ().pitch += Random.Range (0, .5f);
		}
		regencounter += 1;
		manacounter += 1;
		healthslider.GetComponent<Slider> ().value = health / maxhealth;
		manaslider.GetComponent<Slider> ().value = mana / maxmana;
		staminaslider.GetComponent<Slider> ().value = stamina / maxstamina;
		if (menu.statsvisible) {
			attackVal.text = attack.ToString ();
			defenseVal.text = defense.ToString ();
			speedVal.text = speed.ToString ();
			levelval.text = level.ToString ();
			spval.text = sp.ToString ();
		}
		if (manacounter > 30) {
			manacounter = 0;
			mana += manaregen;
			if (mana > maxmana) {
				mana = maxmana;
			}
			stamina += staminaregen;
			if (stamina > maxstamina) {
				stamina = maxstamina;
			}
		}
		if (regencounter > 180) {
			regencounter = 0;
			health += 20;
			if (health > maxhealth) {
				health = maxhealth;
			}
		}
		if (experience > level * scale) {
			experience -= level * scale;
			level += 1;
			sp += 1;
			maxhealth += level * 4;
			maxmana += level * 3;
			health = maxhealth;
			mana = maxmana;
			manaregen += level / 40f;
		}
	}
}
