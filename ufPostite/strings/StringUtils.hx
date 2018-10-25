package ufPostite.strings;

using StringTools;

@:keep
class StringUtils{

	public static function stripExtension(n:String):String{
		trace(" stripExtension");
		var t=~/\.[^.]+$/g;
		return t.replace(n,"");
	}

// MOVE IT
	public static function serializeStatePostData(state:Dynamic):Dynamic {
		var buf:StringBuf=new StringBuf();
		for (a in Reflect.fields(state)){
			var p:String=Reflect.field(state,a);
			var _a=a+"="+p.urlEncode();
			buf.add(_a+"&");
		}

		Reflect.setField(state,"__postData",buf.toString());
		return state;
	}


	static function unCamel(s:String):String{
       //var t=function(str:String) return str.toUpperCase();
       var r1=~/([A-Z])/g;
       s= r1.replace(s, untyped function(v, i) {
       	return i == 0 ? v.toUpperCase() : " " + v.toLowerCase();
       });

       return s;
   }
   // todo remove points
   public static function sanitizeforDownload(str:String):String{
   	
    var nonWordChar= ~/[^\w \xC0-\xFF]/g;
    var good= nonWordChar.replace(str,"_");
    return good;

   }

   //attention j'ai eu une erreur avec ça 
   public static  function camelize(str) {

   	str=~/\s(.)/g.replace(str, untyped function(e) return e.toUpperCase());
   	str= ~/\s/g.replace(str, '');
   	str= ~/^(.)/.replace(str, untyped function(e)return e.toLowerCase());
   	return str;

   }

   public static function getExtension(n:String):String{
   	var t=~/\.[^.]+$/g;
   	if(
   		t.match(n))
   		return t.matched(0).split(".")[1];
   	else return "";
   }

   




}