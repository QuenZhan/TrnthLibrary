using UnityEngine;
using System.Collections.Generic;
using TRNTH;
namespace CardGame{
public class Card:TRNTH.MonoBehaviour{
	
	static public Card dragged=null;
	static List<Transform> lCells=new List<Transform>();
	static List<Card> lDeck=new List<Card>();
	public void snap(Transform tra,Vector3 offset){
		lCells.Remove(traTarget);
		traTarget=tra;
		posTarget=traTarget.position+Vector3.up*0.5f+offset;
		aDrag.s=0.1f+offset.magnitude*0.5f;
	}
	public void snap(){
		lCells.Remove(traTarget);
		lDeck.Remove(this);
		// lCell.Add()
		Transform[] arr=cells;
		if(arr.Length<1)return;
		// if(!traTarget)traTarget=arr[0];
		traTarget=Camera.main.transform;
		foreach(Transform tra in cells){
			if(lCells.Contains(tra)&&tra!=deckCell)continue;
			if((tra.position-traHand.position).magnitude>(traTarget.position-traHand.position).magnitude)continue;
			traTarget=tra;
		}
		if(traTarget==Camera.main.transform)return;
		lCells.Add(traTarget);
		// posTarget=traTarget.position+Vector3.up*0.5f;
		posTarget=traTarget.position+Vector3.up*0.5f*0;
		if(traTarget==deckCell){
			posTarget+=Vector3.one*lDeck.Count*0.03f;
			lDeck.Add(this);
		}
	}
	public void wake(){
		this.enabled=true;
		aSleep.s=10f;
	}
	public void lookUp(){
		selected=false;
		posLook=posTarget+Vector3.up+Vector3.forward*-0.01f;
	}
	public Transform traHand;
	public UITweener tweenRotation;
	public Control control;
	public Transform pCells;
	public Transform deckCell;
	bool selected=false;
	Transform[] cells;
	Transform traTarget;
	Vector3 posTarget;
	Collider col;
	public Vector3 posLook=Vector3.up;
	public float smoothTime=0.3f;
	Alarm aSleep=new Alarm();
	Alarm aDrag=new Alarm();
	Vector3[] vels=new Vector3[10];
	Vector3 _posLook;
	void Start(){
		// if(lCellAvailable.Count==0)lCellAvailable=getChildren(cells);
		// else 
		// traTarget=arr[0];
		posTarget=pos;
		List<Transform> list=new List<Transform>(getChildren(pCells));
		list.Add(deckCell);
		cells=list.ToArray();
		snap();
		lookUp();
		col=collider;
	}
	void Update () {
		if(aSleep.a)this.enabled=false;
		// if(aDrag.a&&!control.isHold){
		if(aDrag.a&&!control.isHold){
			dragged=null;
			snap();
			aDrag.s=1000f;
			lookUp();
		}
		_posLook=Vector3.SmoothDamp(_posLook,posLook,ref vels[0],smoothTime);
		pos=Vector3.SmoothDamp(pos,posTarget,ref vels[1],smoothTime);
		tra.LookAt(_posLook);
	}
	void OnDoubleClick(){
		tweenRotation.Toggle();
	}
	void OnClick(){
		wake();
		selected=!selected;
		// aDrag.s=0.4f;
		if(selected){
			posLook=Camera.main.transform.position;
			posTarget+=Vector3.up;
		}else{
			lookUp();
			posTarget+=-Vector3.up;
		}
		// tweenRotation.Toggle();
	}
	// void OnPress(bool isDown){
		// if(!isDown)return;
		// lCells.Remove(traTarget);
	// }
	void OnDrag(){
		selected=false;
		dragged=this;
		wake();
		aDrag.s=0.04f;
		posLook=Camera.main.transform.position;
		// col.enabled=false;
		if(control.isHover){
			pos=control.hit.point+Vector3.up;
			posTarget=pos;
		}
	}
}
}