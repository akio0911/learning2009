@implementation TCPConnection

- (id)init
{
    self = [super init];
    if(!self){
	return nil;
    }
    // 初期状態を設定する
    [self changeState:[TCPClosed sharedInstance]];

    return self;
}

- (void)activeOpen
{
    // Stateクラスのメソッドを呼び出す
    [_state activeOpenWithConnection:self];
}

- (void)changeState:(TCPState*)state
{
    // 状態遷移を行う
    [_state release];
    _state = [state retain];
}

@end
