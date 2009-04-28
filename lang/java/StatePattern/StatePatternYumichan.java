public class StatePatternYumichan {
    // 状態を表すプロパティ
    private State state = null;

    // 状態を変更するメソッド
    private void changeState(State state) {
	this.state = state;
    }

    // あいさつを返すメソッド
    public String morningGreet() {
	return this.state.morningGreet();
    }

    // 対策を取得するメソッド
    public String getProtectionForCold() {
	return this.state.getProtectionForCold();
    }
}

