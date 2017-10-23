using System.Collections;
using UnityEngine;
using UnityEngine.UI;

public class toggleControl : MonoBehaviour {
	public ParticleSystem[] effects;
	public Toggle toggleButton;
	public Text toggleText;
	public Button prevButton;
	public Button nextButton;
	int count=0;
	
	void Start(){
		toggleText.text = effects[count].ToString();
		for (count=1 ; count < effects.Length ; count++) {
			effects[count].Stop(true,ParticleSystemStopBehavior.StopEmittingAndClear);
		}
		count=0;
		effects[0].Play(true);
	}
	
	public void onOff(){
		if (toggleButton.isOn) {
			effects[count].Play(true);
		} else {
			if (count > 19) {
				effects[count].Stop(true,ParticleSystemStopBehavior.StopEmittingAndClear);
				effects[count].Play(true);
				toggleButton.isOn = true;
			} else {
				effects[count].Stop(true);
			}
		}
	}
	
	public void next(){
		effects[count].Stop(true);
		if (count == effects.Length-1) {
			count = 0;
		} else {
			count++;
		}
		toggleText.text = effects[count].ToString();
		effects[count].Play(true);
		toggleButton.isOn = true;
	}
	
	public void prev(){
		effects[count].Stop(true);
		if (count == 0) {
			count = effects.Length-1;
		} else {
			count--;
		}
		toggleText.text = effects[count].ToString();
		effects[count].Play(true);
		toggleButton.isOn = true;
	}
}