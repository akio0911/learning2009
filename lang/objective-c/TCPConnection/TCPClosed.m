@implementation TCPClosed

- (void)activeOpenWithConnection:(TCPConnection*)connection
{
    // 接続処理を行う
    // ...
    
    // 状態を Established に遷移する
    [connection changeStage:[TCPEstablished sharedInstance]];
}

- (void)passiveOpenWithConnection:(TCPConnection*)connection
{
    // 接続処理を行う
    // ...

    // 状態を Established に遷移する
    [connection changeState:[TCPEstablished sharedInstance]];
}
