using UnityEngine;
using System.Collections;
using System.Collections.Generic;
namespace PipeGame{
public class Element : UIDragDropItem {
	static public Element pick;
	public Element upstream;
	public string status="none";
	Container _container;
	// void OnPress(){
		// pick=this;
	// }
	protected override void OnDragDropStart (){
		if (mTable != null) mTable.repositionNow = true;
		if (mGrid != null) mGrid.repositionNow = true;
	}
	protected override void OnDragDropRelease (GameObject surface){
		var c = surface ? NGUITools.FindInParents<Container>(surface) : null;
		UIDragDropContainer container = surface ? NGUITools.FindInParents<UIDragDropContainer>(surface) : null;
		if(_container!=null){
			_container.element=null;
			// _container=null;
		}
		if (c != null&&c.element==null){
			c.element=this;
			_container=c;
			mTrans.parent=c.transform;

			Vector3 pos = mTrans.localPosition;
			pos.z = 0f;
			mTrans.localPosition = pos;
		}else if (container != null){
			_container=null;
			mTrans.parent = (container.reparentTarget != null) ? container.reparentTarget : container.transform;
			Vector3 pos = mTrans.localPosition;
			pos.z = 0f;
			mTrans.localPosition = pos;
		}else {
			mTrans.parent = mParent;
			if(_container!=null)_container.element=this;
		}
	}
}
}