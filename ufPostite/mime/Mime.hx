package ufPostite.mime;
import ufPostite.strings.StringUtils.*;
import ufPostite.mime.MimeType;
class Mime {

	public static function isImage(s:String):Bool{
   	var ext:Extension= getExtension(s).toLowerCase();
   	var group:ExtGroup=ext;
   	return group.toGroup()==IMG;
   }
   public static function isDoc(s:String):Bool{
   	var ext:Extension= getExtension(s).toLowerCase();
   	var group:ExtGroup=ext;
   	return group.toGroup()==DOC;
   }
   public static function isVideo(s:String):Bool{
   	var ext:Extension= getExtension(s).toLowerCase();
   	var group:ExtGroup=ext;
   	return group.toGroup()==VID;
   }

}