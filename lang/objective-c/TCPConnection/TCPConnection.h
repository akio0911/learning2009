@interface TCPConnection : NSObject
{
  TCPState* _state;
}

- (void)activeOpen;
- (void)passiveOpen;
- (void)close;
- (void)send;
- (void)acknowledge;
- (void)synchronize;

- (void)changeState:(TCPState*)state;

@end
