using UnityEngine;
using System.Collections;
namespace PipeGame{
public class GameMaster: MonoBehaviour{
	// static public GameMaster master;
	public UIGrid gridCell;
	public bool isCircuitDone=false;
	void Awake(){
		Pipe.gridCell=gridCell;
		// master=this;
	}
	void Update(){
		isCircuitDone=Pipe.isCircuitDone;
	}
}
}