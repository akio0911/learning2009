#import <Foundation/Foundation.h>

class HelloWorld;

@interface PLog:NSObject {
 HelloWorld *ptr;
}

- (void)sayHello;
- (void)sayHi:(HelloWorld *)p;
- (id) init;
- (void) dealloc;

@end

class HelloWorld {
 id printLog;
public:
 HelloWorld(bool b) { if(b) printLog = [[PLog alloc] init]; }
 ~HelloWorld() { [printLog release]; }
 void sayHi() { printf("Hi\n"); }
 void sayHello() { [printLog sayHi:this]; }
};

@implementation PLog
- (void) sayHello { NSLog(@"Hello, World!"); }
- (void) sayHi:(HelloWorld *)p { p->sayHi(); }
- (id) init { [super init]; ptr = new HelloWorld(false); return self; }
- (void) dealloc { delete ptr; [super dealloc]; }
@end

int main() {
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

    PLog* plog = [[PLog alloc] init];
    HelloWorld* hello = new HelloWorld(true);

    [plog sayHello];
    hello->sayHello();

    [plog sayHi:hello];
    hello->sayHi();

    [plog release];
    delete hello;

    [pool release];
    return 0;
}
