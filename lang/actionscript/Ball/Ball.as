package{
    import flash.display.Sprite;
    
    public class Ball extends Sprite{
	private var radius:Number;
	private var color:uint;
	private var size:uint = 100;
	private var bgColor:uint = 0x000000;

	public function Ball(radius:Number=40, color:uint=0xff0000){
	    this.radius = radius;
	    this.color = color;
	    init();
	}

	public function init():void{
	    graphics.beginFill(bgColor);
	    graphics.drawRect(0, 0, size, size);
	    graphics.endFill();
	    graphics.beginFill(color);
	    graphics.drawCircle(40, 40, radius);
	    graphics.endFill();
	}
    }
}
