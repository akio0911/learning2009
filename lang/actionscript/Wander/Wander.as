package{
    import flash.display.Sprite;
    import flash.events.Event;
    [SWF(width="640", height="480", backgroundColor="0x000000", frameRate="30")]
    public class Wander extends Sprite{
	private var arrow:Arrow = new Arrow(10, 0xff0000);

	public function Wander(){
	    init();
	}
	private function init():void{
	    arrow.x = 100;
	    arrow.y = 100;
	    addChild(arrow);
	}
	private function onEnterFrame(event:Event):void{
	    
	}
    }
}
