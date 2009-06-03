package{
    import flash.display.Sprite;
    import flash.events.Event;

    public class Search extends Sprite{

	public function Search(){
	    init();
	}
	private function init():void{
	    const COUNT_X:int = 4;
	    const COUNT_Y:int = 4;
	    const RADIUS:int = 40;
	    for(var y:int = 0; y < COUNT_Y; y++){
		for(var x:int = 0; x < COUNT_X; x++){
		    var ball:Ball = new Ball(SIZE);
		    addChild(ball);
		    ball.x = RADIUS * (x*2+1);
		    ball.y = RADIUS * (y*2+1);
		}
	    }
	    addEventListener(Event.ENTER_FRAME, onEnterFrame);
	}
	public function onEnterFrame(event:Event):void{
	}
    }
}
