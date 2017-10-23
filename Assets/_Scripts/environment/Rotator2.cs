using UnityEngine;
using System.Collections;

public class Rotator2 : MonoBehaviour {

	Vector3 to_rotate;
	Vector3 nest_one;
	Vector3 nest_two;
	[Range(.04f,.42f)]
	public float rate;

	// Use this for initialization
	void Start () {
		to_rotate = Vector3.right;
		rate = .08f;
		nest_one = new Vector3 (0, 0, rate);
	}

	// Update is called once per frame
	void Update () {
		nest_one = new Vector3 (0, 0, rate);
		Vector3 projected = new Vector3 (to_rotate.x, to_rotate.y, 0);
		transform.Rotate(projected * Time.deltaTime * 50);
		to_rotate = Quaternion.Euler (nest_one) * to_rotate;
	}
}
