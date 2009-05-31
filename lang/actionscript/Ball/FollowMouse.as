package{
    import flash.display.Sprite;
    import flash.events.Event;
    import org.libspark.geom.Vector2D;

    [SWF(width="465", height="465", backgroundColor="0x000000", frameRate="15")]

    public class FollowMouse extends Sprite{
	private var arrow:Arrow;
	private var vx:Number = 0;
	private var vy:Number = 0;

	public function FollowMouse(){
	    log("frameRate = " + stage.frameRate);
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
	    var desiredVelocity:Vector2D = new Vector2D(dx, dy);
	    var angle:Number = Math.atan2(dy, dx);
	    arrow.rotation = angle * 180 / Math.PI;
	    var maxSpeed:Number = 20;
	    desiredVelocity.div(desiredVelocity.size());
	    desiredVelocity.mul(maxSpeed);
	    
	    vx += desiredVelocity.x - vx/10.0;
	    vy += desiredVelocity.y - vy/10.0;
	    var velocity:Vector2D = new Vector2D(vx, vy);
	    if(velocity.size() > maxSpeed){
		velocity.div(velocity.size());
		velocity.mul(maxSpeed);
	    }
	    arrow.x += velocity.x;
	    arrow.y += velocity.y;
	}
    }
}

