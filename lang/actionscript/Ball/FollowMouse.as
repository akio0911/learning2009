package{
    import flash.display.Sprite;
    import flash.events.Event;
    import org.libspark.geom.Vector2D;

    [SWF(width="640", height="480", backgroundColor="0x000000", frameRate="30")]

    public class FollowMouse extends Sprite{
	private var arrows:Array = new Array();
	private var size:Number = 10;

	public function FollowMouse(){
	    init();
	}
	private function init():void{
	    var colors:Array = [0x000000, 0x0000ff, 0x00ff00, 0x00ffff, 0xff0000, 0xff00ff, 0xffff00, 0xffffff];
	    const ARRAY_COUNT:Number = 100;
 	    for(var i:int = 0; i < ARRAY_COUNT; i++){
 		var arrow:Arrow = new Arrow(size, 0xff0000);
 		arrow.x = Math.random() * stage.stageWidth;
 		arrow.y = Math.random() * stage.stageHeight;
 		arrow.type = Arrow.SEEK;
 		addChild(arrow);
 		arrows.push(arrow);
 	    }
 	    for(var i:int = 0; i < ARRAY_COUNT; i++){
 		var arrow:Arrow = new Arrow(size, 0x00ff00);
 		arrow.x = Math.random() * stage.stageWidth;
 		arrow.y = Math.random() * stage.stageHeight;
 		arrow.type = Arrow.FLEE;
 		addChild(arrow);
 		arrows.push(arrow);
 	    }
 	    for(var i:int = 0; i < ARRAY_COUNT; i++){
 		var arrow:Arrow = new Arrow(size, 0x0000ff);
 		arrow.x = Math.random() * stage.stageWidth;
 		arrow.y = Math.random() * stage.stageHeight;
 		arrow.type = Arrow.ARRIVE;
		arrow.targetArrow = arrows[i];
 		addChild(arrow);
 		arrows.push(arrow);
 	    }
	    addEventListener(Event.ENTER_FRAME, onEnterFrame);
	}
	private function onEnterFrame(event:Event):void{
	    for(var i:int = 0; i < arrows.length; i++){
		arrows[i].update(mouseX, mouseY);
	    }
	}
    }
}
