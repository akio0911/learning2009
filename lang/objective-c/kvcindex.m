#import <Foundation/Foundation.h>

#define MAXMEMBER 8

@interface Team : NSObject
{
    id members[MAXMEMBER];
    int count;
}
- (NSUInteger)countOfFellows;
- (id)objectInFellowsAtIndex:(NSUInteger)index;
@end

@implementation Team
- (void)addMember:(id)someone{
    if(count < MAXMEMBER)
	members[count++] = someone;
}

- (NSUInteger)countOfFellows{
    return count;
}
- (id)objectInFellowsAtIndex:(NSUInteger)index{
    return (index < count) ? members[index] : nil;
}
@end

int main(int argc, char** argv) {
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

    id aTeam = [[Team alloc] init];
    id obj;

    [aTeam addMember:@"Hiroshi"];
    [aTeam addMember:@"Mika"];
    obj = [aTeam valueForKey:@"fellows"];
    NSLog(@"obj=%@\n", NSStringFromClass([obj class]));
    NSLog(@"Fellows: %@\n", obj);
    
    [pool release];
    return 0;
}
