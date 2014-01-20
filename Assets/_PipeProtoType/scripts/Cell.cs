using UnityEngine;
using System.Collections;
namespace PipeGame{
[RequireComponent(typeof(Collider))]
public class Cell:TRNTH.MonoBehaviour{
	internal Collider col;
	void Start(){
		col=collider;
	}
	void OnDrop(){
		Pipe pipe=Pipe.pick;
		if(pipe){
			col.enabled=false;
			pipe.seat(this);
		}
	}
}
}
