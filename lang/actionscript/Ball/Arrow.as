package
{
    import flash.display.Sprite;
    import org.libspark.geom.Vector2D;

    public class Arrow extends Sprite {
	private var size:Number;
	public var v:Vector2D = new Vector2D(0.0, 0.0);
	private var color:uint = 0x000000;
	private var maxSpeed:Number = 20.0;
	public static const SEEK:Number = 1;
	public static const FLEE:Number = 2;
	public static const ARRIVE:Number = 3;
	public var type:Number = SEEK;

	public function Arrow(size:Number=10, color:uint = 0x000000){
	    this.size = size;
	    this.color = color;
	    init();
	}
	public function init():void{
	    graphics.lineStyle(1,0,1);
	    graphics.beginFill(color);
	    graphics.moveTo(-size,-size/2);
	    graphics.lineTo(0,-size/2);
	    graphics.lineTo(0,-size);
	    graphics.lineTo(size,0);
	    graphics.lineTo(0,size);
	    graphics.lineTo(0,size/2);
	    graphics.lineTo(-size,size/2);
	    graphics.lineTo(-size,-size/2);
	    graphics.endFill();
	}

	public function update(mouseX:Number, mouseY:Number):void{
	    switch(this.type){
	    case SEEK:
		var dx:Number = mouseX - this.x;
		var dy:Number = mouseY - this.y;

		var angle:Number = Math.atan2(dy, dx);
		this.rotation = angle * 180 / Math.PI;

		var desiredVelocity:Vector2D = new Vector2D(dx, dy);
		desiredVelocity.div(desiredVelocity.size());
		desiredVelocity.mul(this.maxSpeed);
		this.v.x = this.v.x + desiredVelocity.x/ 10.0;
		this.v.y = this.v.y + desiredVelocity.y/ 10.0;
		//		this.v.x = desiredVelocity.x/ 10.0;
		//		this.v.y = desiredVelocity.y/ 10.0;
		if(this.v.size() > this.maxSpeed){
		    this.v.div(this.v.size());
		    this.v.mul(this.maxSpeed);
		}
		this.x += this.v.x;
		this.y += this.v.y;
		break;
	    case FLEE:
		var dx:Number = mouseX - this.x;
		var dy:Number = mouseY - this.y;

		var range:Number = 100;
		if(dx*dx+dy*dy < range*range){
		    // 逃走
		    dx = this.x - mouseX;
		    dy = this.y - mouseY;
		}

		var angle:Number = Math.atan2(dy, dx);
		this.rotation = angle * 180 / Math.PI;

		var desiredVelocity:Vector2D = new Vector2D(dx, dy);
		desiredVelocity.div(desiredVelocity.size());
		desiredVelocity.mul(this.maxSpeed);
		this.v.x = this.v.x + desiredVelocity.x/ 10.0;
		this.v.y = this.v.y + desiredVelocity.y/ 10.0;
		//this.v.x = desiredVelocity.x/ 10.0;
		//this.v.y = desiredVelocity.y/ 10.0;
		if(this.v.size() > this.maxSpeed){
		    this.v.div(this.v.size());
		    this.v.mul(this.maxSpeed);
		}
		this.x += this.v.x;
		this.y += this.v.y;
		break;
	    case ARRIVE:
		var dx:Number = mouseX - this.x;
		var dy:Number = mouseY - this.y;

		var angle:Number = Math.atan2(dy, dx);
		this.rotation = angle * 180 / Math.PI;

		var desiredVelocity:Vector2D = new Vector2D(dx, dy);
		//		desiredVelocity.div(desiredVelocity.size());
		//		desiredVelocity.mul(this.maxSpeed);
		//		this.v.x = this.v.x + desiredVelocity.x/ 10.0;
		//		this.v.y = this.v.y + desiredVelocity.y/ 10.0;
		this.v.x = desiredVelocity.x/ 10.0;
		this.v.y = desiredVelocity.y/ 10.0;
		if(this.v.size() > this.maxSpeed){
		    this.v.div(this.v.size());
		    this.v.mul(this.maxSpeed);
		}
		this.x += this.v.x;
		this.y += this.v.y;
		break;
	    }
	}
    }
}
