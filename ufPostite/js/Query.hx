package ufpostite.js;

class Query{

    /*
    using ufpostite.js.Query
     as jQuery live
    usage  ".mup".live("click",clickdeleg);
        

    body.liveQuery(".mup","click",clickdeleg)     
     */
   public  static function live(descendent:String, event:String, callback:Event->Void,?parent:Element){
        var elem;
        if (parent == null)parent=js.Browser.document.body;
        try{
            elem=parent.querySelector(descendent);
            elem.addEventListener(event,callback,false);
        }catch(msg:Dynamic){
            
            parent.addEventListener(event, function(e:Event){
    		elem = untyped e.target.closest(descendent); 
            
    // returns null if no matching parentNode is found
    	if(elem!=null){ 
      		callback( e); 
    	}
        }, false); 
     
        }
}
    //convenirnt
public static function liveQuery(parent:Element,descendent:String, event:String, , callback:Event->Void){
 love(descendant,event,callback,parent)
}
}