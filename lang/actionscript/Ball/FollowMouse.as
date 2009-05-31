package{
    import flash.display.Sprite;
    import flash.events.Event;
    import org.libspark.geom.Vector2D;

    [SWF(width="640", height="480", backgroundColor="0x000000", frameRate="15")]

    public class FollowMouse extends Sprite{
	private var arrow:Arrow;
	private var v:Vector2D = new Vector2D(0.0, 0.0);
	private var maxSpeed:Number = 20.0;

	public function FollowMouse(){
	    init();
	}
	private function init():void{
	    arrow = new Arrow();
	    addChild(arrow);
	    addEventListener(Event.ENTER_FRAME, onEnterFrame);
	}
	private function onEnterFrame(event:Event):void{
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
	    v.x = v.x + desiredVelocity.x/ 10.0;
	    v.y = v.y + desiredVelocity.y/ 10.0;
	    if(v.size() > maxSpeed){
		v.div(v.size());
		v.mul(maxSpeed);
	    }
	    arrow.x += v.x;
	    arrow.y += v.y;
	}
    }
}
