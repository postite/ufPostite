package ufPostite.tools;

class NoTrace{

    public static var exclude=[];
	public static function doIt(){
        
	var old = haxe.Log.trace;
        
        haxe.Log.trace = function (v:Dynamic, ?pos:haxe.PosInfos) {
            for (f in exclude)
                if (f(pos)) return;
            old(v, pos);
        }
        
        

        
        return exclude;
	}

    public static function push(inst:Dynamic){
            exclude.push(function (pos) {
          // return pos.methodName == 'filterableTracer';
           return pos.className==Type.getClassName(Type.getClass(inst));
        });
    }
}