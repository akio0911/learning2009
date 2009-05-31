package{
    import flash.display.Sprite;
    import flash.events.Event;
    import org.libspark.geom.Vector2D;

    [SWF(width="640", height="480", backgroundColor="0x000000", frameRate="15")]

    public class FollowMouse extends Sprite{
	//	private var arrow:Arrow;
	private var arrows:Array = new Array();
	private var maxSpeed:Number = 20.0;
	private var ARROW_COUNT = 100;

	public function FollowMouse(){
	    init();
	}
	private function init():void{
	    for(var i:int = 0; i < ARROW_COUNT; i++){
		var arrow:Arrow = new Arrow();
		arrow.x = Math.random() * stage.stageWidth;
		arrow.y = Math.random() * stage.stageHeight;
		addChild(arrow);
		arrows.push(arrow);
	    }
	    addEventListener(Event.ENTER_FRAME, onEnterFrame);
	}
	private function onEnterFrame(event:Event):void{
	    for(var i:int = 0; i < arrows.length; i++){
		var arrow:Arrow = arrows[i];

		var dx:Number = mouseX - arrow.x;
		var dy:Number = mouseY - arrow.y;

		var range:Number = 100;
		if(dx*dx+dy*dy < range*range){
		    // 逃走
		    dx = arrow.x - mouseX;
		    dy = arrow.y - mouseY;
		}

		var angle:Number = Math.atan2(dy, dx);
		arrow.rotation = angle * 180 / Math.PI;

		var desiredVelocity:Vector2D = new Vector2D(dx, dy);
		desiredVelocity.div(desiredVelocity.size());
		desiredVelocity.mul(maxSpeed);
		arrow.v.x = arrow.v.x + desiredVelocity.x/ 10.0;
		arrow.v.y = arrow.v.y + desiredVelocity.y/ 10.0;
		if(arrow.v.size() > maxSpeed){
		    arrow.v.div(arrow.v.size());
		    arrow.v.mul(maxSpeed);
		}
		arrow.x += arrow.v.x;
		arrow.y += arrow.v.y;
	    }
	}
    }
}
