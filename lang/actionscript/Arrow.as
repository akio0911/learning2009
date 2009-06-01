package
{
    import flash.display.Sprite;

    public class Arrow extends Sprite {
	private const SIZE:Number = 50;
	public function Arrow(){
	    init();
	}
	public function init():void{
	    graphics.lineStyle(1,0,1);
	    graphics.beginFill(0xffff00);
	    graphics.moveTo(-SIZE,-SIZE/2);
	    graphics.lineTo(0,-SIZE/2);
	    graphics.lineTo(0,-SIZE);
	    graphics.lineTo(SIZE,0);
	    graphics.lineTo(0,SIZE);
	    graphics.lineTo(0,SIZE/2);
	    graphics.lineTo(-SIZE,SIZE/2);
	    graphics.lineTo(-SIZE,-SIZE/2);
	    graphics.endFill();
	}
    }
}
