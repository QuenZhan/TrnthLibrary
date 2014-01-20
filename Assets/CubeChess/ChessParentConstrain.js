
@script ExecuteInEditMode()

function mMesh(tras:Transform[]):Transform{
	return mMesh(Utility.chooseInArray(tras),Vector3.zero);
}
function mMesh(tras:Transform[],vec:Vector3):Transform{
	return mMesh(Utility.chooseInArray(tras),vec);
}
function mMesh(tra:Transform):Transform{
	return mMesh(tra,Vector3.zero);
}
function mMesh(tra:Transform,vec:Vector3):Transform{
	tra.renderer.enabled=true;
	tra.localPosition.y=vec.y;
	tra.localPosition.z=0;
	return tra;
}
function equip(arr:Array){
	for(eq in arr)equip(eq);
}
function equip(option:String){
	cpc=this;
	switch(option){
	case"none":
		equip("weaponOff");
		equip("clothOff");
		equip("subOff");
		break;
	case"weaponOff":
		for(tt in cpc.trasWeaponAll)tt.renderer.enabled=false;
		cpc.traWeapon.localScale=Vector3.one;
		rangeAtkDis=2.7;
		rangeAtkDisNear=1.5;
		atkTimeWeapon=0.7;
		damage=20;
		eqWeapon="hand";
		break;
	case"前鋒":
		equip("sword");
		equip("shield");
		cpc.decApply("前鋒");
		
		// cpc.trasShield[0].renderer.enabled=true;
		// cpc.trasShield[1].renderer.enabled=false;
		break;
	case"弓手":
		equip("crossbow");
		equip("狙擊鏡");
		cpc.decApply("弓手");
		break;
	case"槍兵":
		equip("spear");
		equip("subOff");
		cpc.decApply(option);
		break;
	case"騎兵":
		equip("sword");
		equip("shield");
		equip("horse");
		cpc.decApply(option);
		// cpc.trasShield[1].renderer.enabled=true;
		// cpc.trasShield[0].renderer.enabled=false;
		break;
	case"重騎兵":
		equip("lance");
		equip("shield");
		equip("horse");
		cpc.decApply("騎兵");
		// cpc.trasShield[1].renderer.enabled=true;
		// cpc.trasShield[0].renderer.enabled=false;
		break;
	case"指揮官":
		equip("指揮刀");
		// equip("狙擊鏡");
		break;
	case"指揮刀":
	case"commandSword":
		equip("weaponOff");
		mMesh(cpc.trasWeaponBlade[0],Vector3(0,0.5,0));
		mMesh(cpc.twHiltShort);
		eqWeapon=option;
		break;
	case"急救術":
	case"aid":
		equip("weaponOff");
		mMesh(cpc.twHiltWand);
		eqWeapon=option;
		damage=-10;
		rangeAtkDisNear=0;
		break;
	case"knife":
		equip("weaponOff");
		mMesh(cpc.trasWeaponBlade,Vector3(0,0.5,0));
		mMesh(cpc.twHiltShort);
		cpc.traWeapon.localScale=Vector3(1,0.3,0.3);
		rate=0.3;
		atkTimeWeapon*=rate;
		eqWeapon=option;
		break;
	case"crossbow":
		equip("weaponOff");
		mMesh(cpc.trasWeaponCrossbow);
		eqWeapon=option;
		rangeAtkDis=30;
		rangeAtkDisNear=5;
		damage=30;
		atkTimeWeapon=0.5;
		break;
	case"戟":
		equip("weaponOff");
		mMesh(cpc.trasWeaponHalberd,Vector3(0,4,0));
		mMesh(cpc.twHiltSpear);
		eqWeapon="sword";
		rangeAtkDis=6.5;
		rangeAtkDisNear=4.5;
		damage=90;
		atkTimeWeapon=1.7;
		break;
	case"勾":
		equip("weaponOff");
		mMesh(cpc.trasWeaponHook,Vector3(0,4,0));
		mMesh(cpc.twHiltSpear);
		eqWeapon=option;
		rangeAtkDis=6.5;
		rangeAtkDisNear=4.5;
		damage=20;
		atkTimeWeapon=1.7;
		break;
	case"spear":
		equip("weaponOff");
		mMesh(cpc.trasWeaponSpear,Vector3(0,4,0));
		mMesh(cpc.twHiltSpear);
		eqWeapon=option;
		rangeAtkDis=6.5;
		rangeAtkDisNear=4.5;
		damage=30;
		atkTimeWeapon=0.3;
		break;
	case"lance":
		equip("weaponOff");
		mMesh(cpc.trasWeaponAll[5],Vector3(0,2,0));
		mMesh(cpc.twHiltSpear);
		eqWeapon="spear";
		rangeAtkDis=8.0;
		rangeAtkDisNear=6.0;
		damage=180;
		atkTimeWeapon=3.6;
		break;
	case"sword":
		equip("weaponOff");
		mMesh(cpc.trasWeaponBlade,Vector3(0,0.5,0));
		mMesh(cpc.twHiltShort);
		eqWeapon=option;
		rangeAtkDis=3;
		rangeAtkDisNear=2;
		damage=30;
		atkTimeWeapon=0.3;
		break;
	case"bomb":
		equip("weaponOff");
		mMesh(cpc.traBomb[0]);
		mMesh(cpc.traBomb[1]);
		eqWeapon=option;
		rangeAtkDis=100;
		rangeAtkDisNear=8;
		damage=50;
		atkTimeWeapon=2.4;
		break;
	case"subOff":
		arr=new Array();
		arr=arr.Concat(cpc.trasShield);
		for(tt in arr)tt.renderer.enabled=false;
		cpc.traSubWeapon.localScale=Vector3.one;
		eqSubWeapon=option;
		atkTimeHandLeft=1.0;
		break;
	case"shield":
		equip("subOff");
		// mMesh(cpc.trasShield,Vector3.zero);
		eqSubWeapon=option;
		cpc.trasShield[1].renderer.enabled=isEnemy;
		cpc.trasShield[0].renderer.enabled=!isEnemy;
		// atkTimeHandLeft=1.7;
		break;
	case"狙擊鏡":
	case"scope":
		equip("subOff");
		eqSubWeapon=option;
		break;
	case"clothOff":
		eqBody=option;
		atkTimeBody=1.0;
		phySpeedMax=1.5;
		break;
	case"迷彩":
		equip("clothOff");
		eqBody=option;
		break;
	case"clothLight":
		equip("clothOff");
		eqBody=option;
		atkTimeBody=1.5;
		phySpeedMax=1.3;
		break;
	case"clothHeavy":
		equip("clothOff");
		eqBody=option;
		atkTimeBody=1.7;
		phySpeedMax=1.0;
		break;
	}
	atkTime=atkTimeWeapon*atkTimeBody*atkTimeHandLeft;
}
function apply(){
	traBody.parent=jointBody;
	traHead.parent=jointHead;
	traArmRight.parent=jointArmRight;
	traArmLeft.parent=jointArmLeft;
	traLegRight.parent=jointLegRight;
	traLegLeft.parent=jointLegLeft;
	traWeapon.parent=jointWeapon;
	traSubWeapon.parent=jointSubWeapon;
	arr=new Array();
	arr=arr.Concat(trasWeaponAll);
	arr=arr.Concat(trasShield);
	arr=arr.Concat(trasSubWeapon,trasHat,trasHatDec);
	arr=arr.Concat(trasEar,trasMask,trasEye,trasShoes,traBomb,traEmasks);
	for(tra in arr)tra.renderer.enabled=false;
	arr=new Array();
	// for(pair in pEars){
		// DestroyImmediate(pair.left.gameObject);
		// DestroyImmediate(pair.left.gameObject);
	// }
	// for(tra in trasEar){
		// tra.renderer.enabled=false;
		// pair=new Pair(tra,tra);
		// tra=Instantiate(tra.gameObject).transform;
		// pair.right=tra;
		// pos=tra.localPosition;
		// tra.parent=pair.left.parent;
		// tra.localPosition=pos;
		// tra.localScale.x*=-1;
		// tra.localPosition.x*=-1;
		// tra.gameObject.active=tra.parent.gameObject.active;
		// arr.push(pair);
	// }
	// pEars=arr.ToBuiltin(Pair);
	// for(pair in pShoes){
		// DestroyImmediate(pair.left.gameObject);
		// DestroyImmediate(pair.left.gameObject);
	// }
	// arr=new Array();
	// for(tra in trasShoes){
		// tra.renderer.enabled=false;
		// pair=new Pair(tra,tra);
		// tra=Instantiate(tra.gameObject).transform;
		// pair.right=tra;
		// pos=tra.localPosition;
		// tra.parent=traLegRight;
		// tra.localScale.x*=-1;
		// tra.localPosition=pos;
		// tra.localPosition.x*=-1;
		// tra.gameObject.active=tra.parent.gameObject.active;
		// arr.push(pair);
	// }
	// pShoes=arr.ToBuiltin(Pair);
}
function mEnable(value:float,tras:Transform[]){
	if(Random.value<value)Utility.chooseInArray(tras).renderer.enabled=true;;
}
function mEnable(value:float,pairs:Pair[]){
	// if(Ran.value()<value){
		// pp=Utility.chooseInArray(pairs);
		// pp.left.renderer.enabled=true;;
		// pp.right.renderer.enabled=true;;
	// }
}
function decApply(option:String){
	switch(option){
	case"off":
		arr=new Array();
		arr=arr.Concat(trasHat,trasHatDec,trasMask,trasEye);
		for(tra in arr)tra.renderer.enabled=false;
		arr=new Array();
		arr=arr.Concat(pEars,pShoes);
		// for(pair in arr){
			// pair.left.renderer.enabled=false;
			// pair.right.renderer.enabled=false;
		// }
		break;
	case"random":
		decApply("off");
		vv=0.2;
		mEnable(1,trasHat);
		mEnable(vv,trasHatDec);
		mEnable(vv,trasHatDec);
		// mEnable(vv,trasHatDec);
		// mEnable(vv,trasHatDec);
		mEnable(vv,trasMask);
		mEnable(vv,trasEye);
		mEnable(vv,pEars);
		mEnable(vv,pShoes);
		break;
	case"裝飾品":
		vv=0.3;
		mEnable(vv,trasMask);
		mEnable(vv,trasEye);
		mEnable(vv,pEars);
		mEnable(vv,pShoes);
		break;
	case"gray":
		vv=0.2;
		// mEnable(1,trasHat);
		trasHat[2].renderer.enabled=true;
		mEnable(vv,trasHatDec);
		mEnable(vv,trasHatDec);
		mEnable(vv,trasMask);
		mEnable(vv,trasEye);
		mEnable(vv,pEars);
		mEnable(vv,pShoes);
		break;
	case"main":
		trasHat[1].renderer.enabled=true;
		break;
	case"前鋒":
		// trasHat[3].renderer.enabled=true;
		trasHatDec[3].renderer.enabled=true;
		decApply("裝飾品");
		break;
	case"弓手":
		trasHat[2].renderer.enabled=true;
		trasHatDec[0].renderer.enabled=true;
		decApply("裝飾品");
		break;
	case"槍兵":
		trasHat[0].renderer.enabled=true;
		// trasHatDec[0].renderer.enabled=true;
		decApply("裝飾品");
		break;
	case"騎兵":
		trasHat[3].renderer.enabled=true;
		decApply("裝飾品");
		break;
	case"敵人":
		for(tt in traEmasks)tt.renderer.enabled=false;
		arr=new Array(traWholeBody);
		arr=arr.Concat(traEmasks);
		for(tt in arr){
			tt.renderer.sharedMaterial=isEnemy?mEnmey:mAlly;
		}
		break;
	case"敵人前鋒":
		decApply("敵人");
		traEmasks[2].renderer.enabled=true;
		break;
	case"敵人主將":
		decApply("敵人");
		traEmasks[0].renderer.enabled=true;
		break;
	case"敵人後衛":
		decApply("敵人");
		traEmasks[1].renderer.enabled=true;
		break;
	}
}
class Pair{
	function Pair(left:Transform,right:Transform){
		this.left=left;
		this.right=right;
	}
	var left:Transform;
	var right:Transform;
}
var decPreset="random";
var weaponReset="前鋒";
var ApplyNow=false;
var isEnemy=false;

var jointBody:Transform;
var jointHead:Transform;
var jointArmRight:Transform;
var jointArmLeft:Transform;
var jointLegRight:Transform;
var jointLegLeft:Transform;
var jointWeapon:Transform;
var jointSubWeapon:Transform;

var traBody:Transform;
var traHead:Transform;
var traArmRight:Transform;
var traArmLeft:Transform;
var traLegRight:Transform;
var traLegLeft:Transform;
var traWeapon:Transform;
var traSubWeapon:Transform;

var trasWeaponBlade:Transform[];
var trasWeaponSpear:Transform[];
var trasWeaponHalberd:Transform[];
var trasWeaponHook:Transform[];
var trasWeaponTwoHanded:Transform[];
var trasWeaponhilt:Transform[];
var trasWeaponCrossbow:Transform[];
var trasWeaponAll:Transform[];
var trasSubWeapon:Transform[];
var trasShield:Transform[];
var trasHat:Transform[];
var trasHatDec:Transform[];
var trasEar:Transform[];
var trasMask:Transform[];
var trasEye:Transform[];
var trasShoes:Transform[];
var traBomb:Transform[];
var traEmasks:Transform[];
var traWholeBody:Transform[];

var twHiltShort:Transform;
var twHiltSpear:Transform;
var twHiltWand:Transform;
var twHiltHands:Transform;

var pShoes:Pair[];
var pEars:Pair[];

var mEnmey:Material;
var mAlly:Material;

function Update(){
	if(ApplyNow){
		apply();
		equip(weaponReset);
		decApply("敵人");
		decApply(decPreset);
		ApplyNow=false;
	}
}