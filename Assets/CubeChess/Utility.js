enum GuiDepth{
	town
	,mouse
	,chess
}
static function projectFace(vec:Vector3):Vector3{
	return Vector3(vec.x,22.5,vec.z);
}
static function projectFace(vec:Vector3,y:float):Vector3{
	return Vector3(vec.x,y,vec.z);
}
static function getRd(vec:Vector3):float{
	return projectFace(vec,0).magnitude/rdRate;
}
static function rotateVec(vec:Vector3,nor:Vector3,theta:float):Vector3{
	var pro=Vector3.Project(vec,nor);
	var pa=vec-pro;
	return pro+Mathf.Cos(theta)*pa+Vector3.Cross(vec,nor).normalized*Mathf.Sin(theta)*pa.magnitude;
}
static function chooseInArray(arr:Array){
	var iter=Mathf.Floor(Random.value*(arr.length));
	if(iter<0
		||arr.length<1)return null;
	return arr[iter];
}
static var rdRate=0.04;