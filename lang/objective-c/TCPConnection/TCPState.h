@interface TCPState : NSObject
{
}

+ (id)sharedInstance;

- (void)activeOpenWithConnection:(TCPConnection*)connection;
- (void)passiveOpenWithConnection:(TCPConnection*)connection;
- (void)closeWithConnection:(TCPConnection*)connection;
- (void)sendWithConnection:(TCPConnection*)connection;
- (void)acknowledgeWithConnection:(TCPConnection*)connection;
- (void)synchronizeWithConnection:(TCPConnection*)connection;

@end

