package{
    import flash.display.Sprite;
    import flash.events.Event;
    import org.libspark.geom.Vector2D;

    [SWF(width="640", height="480", backgroundColor="0x000000", frameRate="15")]

    public class FollowMouse extends Sprite{
	//	private var arrow:Arrow;
	private var arrows:Array = new Array();
	//	private var ARROW_COUNT:Number = 10;
	private var size:Number = 10;

	public function FollowMouse(){
	    init();
	}
	private function init():void{
	    var colors:Array = [0x000000, 0x0000ff, 0x00ff00, 0x00ffff, 0xff0000, 0xff00ff, 0xffff00, 0xffffff];
	    for(var i:int = 0; i < colors.length; i++){
		var arrow:Arrow = new Arrow(size, colors[i]);
		arrow.x = Math.random() * stage.stageWidth;
		arrow.y = Math.random() * stage.stageHeight;
		arrow.type = Arrow.SEEK;
		addChild(arrow);
		arrows.push(arrow);
	    }
// 	    arrows[0] = Arrrow.SEEK;
// 	    arrows[1] = Arrrow.SEEK;
// 	    arrows[2] = Arrrow.SEEK;
// 	    arrows[3] = Arrrow.SEEK;
// 	    arrows[4] = Arrrow.SEEK;
// 	    arrows[5] = Arrrow.SEEK;
// 	    arrows[6] = Arrrow.SEEK;
// 	    arrows[7] = Arrrow.SEEK;
	    addEventListener(Event.ENTER_FRAME, onEnterFrame);
	}
	private function onEnterFrame(event:Event):void{
	    for(var i:int = 0; i < arrows.length; i++){
		arrows[i].update(mouseX, mouseY);
	    }
	}
    }
}
