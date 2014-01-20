using UnityEngine;
using System.Collections;
namespace PipeGame{
[RequireComponent(typeof(Collider))]
public class Background : MonoBehaviour {
	void OnDrop(){
		if(Pipe.pick)Pipe.pick.reset();
	}
}
}