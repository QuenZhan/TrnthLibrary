using UnityEngine;
using TRNTH;
using System.Collections.Generic;
namespace PipeGame{
public class Pipe:TRNTH.MonoBehaviour{
	class Neighbor{
		public Neighbor(Pipe pipe,int direction){
			this.pipe=pipe;
			this.direction=direction;
		}
		public Pipe pipe;
		public int direction;
	}
	Neighbor[] neighbors{
		get{
			List<Neighbor> list=new List<Neighbor>();
			foreach(Pipe pipe in pipes.ToArray()){
			for(int i=0;i<4;i++){
				if((gridCell.transform.TransformDirection(posesNeighbor[i])+this.pos-pipe.pos).magnitude<0.2);
				else continue;
				list.Add(new Neighbor(pipe,i));
			}}
			return list.ToArray();
		}
	}
	static void checkCircuit(){
		List<Pipe> lSource=new List<Pipe>(sources);
		isCircuitDone=false;
		foreach(Pipe pipe in pipes){
			pipe.hasWater=false;
		}
		for(int i=0;i<1000&&lSource.Count>0;i++){
			Pipe pipeThis=lSource[0];
			pipeThis.hasWater=true;
			foreach(Neighbor neighbor in pipeThis.neighbors){
				Pipe pipe=neighbor.pipe;
				bool isOk=false;
				switch(neighbor.direction){
				case 0:isOk=pipeThis.top&&pipe.bottom;break;
				case 1:isOk=pipeThis.right&&pipe.left;break;
				case 2:isOk=pipeThis.bottom&&pipe.top;break;
				case 3:isOk=pipeThis.left&&pipe.right;break;
				}
				if(isOk){
					pipe.hasWater=true;
					lSource.Add(pipe);
					if(pipe.isEnd)isCircuitDone=true;
				}
			}
			lSource.Remove(pipeThis);
		}
	}
	public void seat(Cell cell){
		if(col)col.enabled=true;
		tra.position=cell.tra.position;
		sur="set";
		pick=null;
		if(this.cell)this.cell.collider.enabled=true;
		this.cell=cell;
		cell.collider.enabled=false;
		checkCircuit();
	}
	public void reset(){
		tra.position=posOrin;
		if(col)col.enabled=true;
		pick=null;
		sur="free";
		checkCircuit();
	}
	static public bool isCircuitDone=false;
	static public Pipe pick;
	static List<Pipe> pipes=new List<Pipe>();
	static List<Pipe> sources=new List<Pipe>();
	static public UIGrid gridCell;
	public bool top;
	public bool right;
	public bool bottom;
	public bool left;
	public float radiusSnapToNearestCell;
	public bool isSource=false;
	public bool isEnd=false;
	public bool hasWater=false;
	bool isFixed=false;
	[HideInInspector]public string sur="";
	Cell cell;
	Collider col;
	Vector3 posOrin;
	Vector3[] posesNeighbor={new Vector3(0,1,0)
		,new Vector3(1,0,0)
		,new Vector3(0,-1,0)
		,new Vector3(-1,0,0)
		};
	void Start(){
		if(gridCell){
			float ww=gridCell.cellWidth;
			float hh=gridCell.cellHeight;
			posesNeighbor=new Vector3[4];
			posesNeighbor[0]=new Vector3(0,hh,0);
			posesNeighbor[1]=new Vector3(ww,0,0);
			posesNeighbor[2]=new Vector3(0,-hh,0);
			posesNeighbor[3]=new Vector3(-ww,0,0);
		}
		pipes.Add(this);
		if(isSource)sources.Add(this);
		col=collider;
		posOrin=tra.position;
		Collider colNearest=null;
		foreach(Collider ccc in Physics.OverlapSphere(tra.position,radiusSnapToNearestCell)){
			Cell cc=ccc.GetComponent<Cell>();
			if(!cc)continue;
			if(!colNearest||(ccc.transform.position-tra.position).magnitude<(colNearest.transform.position-tra.position).magnitude){}
			else continue;
			colNearest=ccc;
			cell=cc;
		}
		if(cell){
			seat(cell);
			posOrin=tra.position;
			isFixed=true;
		}
	}
	void OnPress(bool isDown){
		if(!isDown||isFixed)return;
		switch(sur){
		case"set":
		case"free":
		default:
			col.enabled=true;
			if(cell)cell.col.enabled=true;
			sur="dragging";
			pick=this;
			break;
		}
	}
	void OnDrag(){
		if(pick!=this||isFixed)return;
		col.enabled=false;
		// if(Control.isHover)tra.position=Control.hit.point;
	}
	void OnDrop(){
		if(pick){
			pick.reset();
		}
	}
}}