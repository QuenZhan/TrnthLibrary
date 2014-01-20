using UnityEngine;
using System.Collections.Generic;
using TRNTH;
namespace CardGame{
public class Hand :TRNTH.MonoBehaviour {
	List<Card> lSnap=new List<Card>();
	public Control control;
	public Transform pCards;
	public float radiusSnap=1f;
	float _radiusSnap=1f;
	Card[] cards;
	Alarm aSnap=new Alarm();
	void Start(){
		_radiusSnap=radiusSnap;
		List<Card> list=new List<Card>();
		foreach(Transform tra in pCards){
			list.Add(tra.GetComponent<Card>());
		}
		cards=list.ToArray();
		// getChildren(pCards);
	}
	void Update () {
		if(control.isHover)pos=control.hit.point+Vector3.up*0.5f;
		// bool isOk=UICamera.currentTouch==null||UICamera.currentTouch.dragged==null;
		bool isOk=Card.dragged==null;
		if(control.isClick)aSnap.s=0.2f;
		if(control.isHold&&aSnap.a&&isOk){
			_radiusSnap+=0.01f;
			// _radiusSnap=collider.bounds.extents.magnitude;
			int num=0;
			foreach(Card card in cards){
				if((card.pos-pos).magnitude>_radiusSnap)continue;
				lSnap.Add(card);
				card.wake();
				card.lookUp();
				card.snap(tra,Vector3.one*0.05f*num);
				num++;
			}
		}else {
			_radiusSnap=radiusSnap;
			lSnap.Clear();
		}
		// else if(lSnap.Count>0){
			// _radiusSnap=radiusSnap;
			// Card card=lSnap[0];
			// card.snap();
			// card.wake();
			// card.lookUp();
			// lSnap.Remove(card);
		// }
		
	}
}
}