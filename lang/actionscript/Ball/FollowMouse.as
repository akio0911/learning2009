package{
    import flash.display.Sprite;
    import flash.events.Event;

    public class FollowMouse extends Sprite{
	private var ball:Ball;
	private var speed:Number = 5;

	public function FollowMouse(){
	    init();
	}
	private function init():void{
	    ball = new Ball();
	    addChild(ball);
	    addEventListener(Event.ENTER_FRAME, onEnterFrame);
	}
	private function onEnterFrame(event:Event):void{
	    var dx:Number = mouseX - ball.x;
	    var dy:Number = mouseY - ball.y;
	    var angle:Number = Math.atan2(dy, dx);
	    ball.rotation = angle * 180 / Math.PI;
	    var vx:Number = Math.cos(angle) * speed;
	    var vy:Number = Math.sin(angle) * speed;
	    ball.x += vx;
	    ball.y += vy;
	}
    }
}

