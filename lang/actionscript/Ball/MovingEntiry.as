package{
    import org.libspark.geom.Vector2D;

    public class MovingEntiry extends BaseGameEntiry{
	private var velocity:Vector2D;

	// エンティティが向いている方向を指す正規化されたベクトル
	private var heading:Vector2D;

	// 方向を示すベクトルに直角なベクトル
	private var side:Vector2D;
    }
}
