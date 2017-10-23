using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BowBehavior : MonoBehaviour {

	public Transform l_hand, r_hand, player;
	public Transform bowtop, bowbottom;

	public GameObject arrowprefab;
	private GameObject arrow;

	public GameObject tophalfbowstring, bottomhalfbowstring;
	public LineRenderer thbs, bhbs;
	public Material stringmat;
	public Gradient grad;
	public OVRGrabbable gr;
	public OVRHapticsClip clip = new OVRHapticsClip (50);
	public OVRHapticsClip bclip = new OVRHapticsClip (50);


	public GameObject bowdrawaudioprefab;
	public Material tooned, store;

	public bool rhandrelease, rindrelease, pulling, taut;
	public float rhand_prevFlex, rind_prevFlex,separation_dist;
	public Vector3 separationvector;
	public MagicManager em;
	public PlayerManager pm;

	// Use this for initialization
	void Start () {
		for (int i = 0; i < 50; i++) {
			clip.WriteSample(190);
			bclip.WriteSample(255);
		}
		em = GameObject.FindGameObjectWithTag ("magicmanager").GetComponent<MagicManager> ();
		pm = GameObject.FindGameObjectWithTag ("playermanager").GetComponent<PlayerManager> ();
		player = GameObject.FindGameObjectWithTag ("Player").transform;
		l_hand = GameObject.FindGameObjectWithTag ("lhandgrabber").transform;
		r_hand = GameObject.FindGameObjectWithTag ("rhandgrabber").transform;
		gr = gameObject.GetComponent<OVRGrabbable> ();
		rhandrelease = true;
		rindrelease = true;
		tophalfbowstring = new GameObject ();
		tophalfbowstring.AddComponent<LineRenderer> ();
		thbs = tophalfbowstring.GetComponent<LineRenderer> ();
		bottomhalfbowstring = new GameObject ();
		bottomhalfbowstring.AddComponent<LineRenderer> ();
		bhbs = bottomhalfbowstring.GetComponent<LineRenderer> ();
		thbs.material = stringmat;
		bhbs.material = stringmat;
		thbs.startWidth = .02f;
		bhbs.startWidth = .02f;
		thbs.colorGradient = grad;
		bhbs.colorGradient = grad;
	}
	
	// Update is called once per frame
	void Update () {
		if (!gr.isGrabbed) {
			return;
		}

		if (em.leftpointing || em.rightpointing) {
			em.leftpointing = false;
			em.rightpointing = false;
		}
		rhand_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.RHandTrigger);
		rind_prevFlex = OVRInput.Get (OVRInput.RawAxis1D.RIndexTrigger);
		if (rhand_prevFlex < .35) {
			rhandrelease = true;
		} if (rind_prevFlex < .35) {
			rindrelease = true;
		}
		separationvector = l_hand.position - r_hand.position;
		separation_dist = separationvector.magnitude;
		if (separation_dist < .4 && rind_prevFlex > .55 && rhand_prevFlex > .55 && rhandrelease && rindrelease && pm.stamina > 5f) {
			pulling = true;
			rindrelease = false;
			rhandrelease = false;
			Vector3 tmp = separationvector;
			tmp.Normalize ();
			arrow = Instantiate (arrowprefab, r_hand.position + 1.2f * tmp, Quaternion.LookRotation (separationvector, player.up));
			arrow.GetComponent<ArrowBehavior> ().bow = gameObject;
		}
		if (pulling) {
			pm.stamina -= Time.deltaTime * 12f;
			thbs.enabled = true;
			bhbs.enabled = true;
			thbs.SetPosition (0, r_hand.position);
			thbs.SetPosition (1, bowtop.position);
			bhbs.SetPosition (0, r_hand.position);
			bhbs.SetPosition (1, bowbottom.position);
			if ((l_hand.position - r_hand.position).magnitude > .6 && !taut) {
				taut = true;
				GameObject obj = Instantiate (bowdrawaudioprefab, transform.position, transform.rotation);
				obj.GetComponent<AudioSource> ().pitch += Random.Range (-1.0f, 1.0f);
				Destroy (obj, 1.5f);
			}
			if ((l_hand.position - r_hand.position).magnitude <= .6) {
				taut = false;
			}
			if ((rindrelease || rhandrelease || pm.stamina < 1f)){
				pulling = false;
				if ((l_hand.position - r_hand.position).magnitude > .6) {
					arrow.GetComponent<ArrowBehavior> ().fire = true;
					OVRHaptics.RightChannel.Preempt (clip);
					OVRHaptics.LeftChannel.Preempt (bclip);
				} else {
					Destroy (arrow);
				}
			}
		} else {
			thbs.enabled = false;
			bhbs.enabled = false;
		}
	}
}
