using UnityEngine;
namespace PipeGame{
public class Circuit : MonoBehaviour {
	public bool refresh=false;
	public Element[] elementOrderList;
	public Container[] containerOrderList;
	public void check(){
		foreach(var e in elementOrderList){
			e.status="none";
		}
		var isOkay=true;
		Element upstream=null;
		int ll=Mathf.Min(elementOrderList.Length,containerOrderList.Length);
		for(int i=0;i<ll;i++){
			var c=containerOrderList[i];
			var e=elementOrderList[i];
			if(c.element==e){
				e.upstream=upstream;
				e.status=isOkay?"work":"broken";
				upstream=e;
			}else{
				isOkay=false;
				if(c.element!=null)c.element.status="broken";
			}
		}
	}
	void OnEnable(){
		if(elementOrderList.Length!=containerOrderList.Length)Debug.LogWarning("elementOrderList.Length!=containerOrderList.Length");
	}
	void Update(){
		if(refresh)check();
		refresh=false;
	}
	void OnDestroy(){
		// Container.list.Clear();
	}
}
}