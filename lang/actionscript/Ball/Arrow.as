package
{
    import flash.display.Sprite;

    public class Arrow extends Sprite {
	private var size:Number;

	public function Arrow(size:Number=10){
	    this.size = size;
	    init();
	}
	public function init():void{
	    graphics.lineStyle(1,0,1);
	    graphics.beginFill(0xffff00);
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
    }
}
