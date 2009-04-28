// http://www.techscore.com/tech/DesignPattern/State.html
// を参考に。

public class Yumichan {
    // 通常
    private static final int STATE_ORDINARY = 0;
    // 機嫌が悪い
    private static final int STATE_IN_BAD_MOOD = 1;
    // 状態を表すプロパティ
    private int state = -1;

    // 状態を変更するメソッド
    public void changeState(int state) {
	this.state = state;
    }

    // あいさつを返すメソッド
    public String morningGreet() {
	if(state == STATE_ORDINARY){
	    return "ossu";
	}else if(state == STATE_IN_BAD_MOOD){
	    return "oo";
	}else{
	    return "...";
	}
    }

    // 防寒具を取得するメソッド
    public String getProtectionForCold() {
	if(state == STATE_ORDINARY){
	    return "hasiru";
	}else if(state == STATE_IN_BAD_MOOD){
	    return "momohiki wo haku";
	}else{
	    return "...";
	}
    }
}

