#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *name;
    NSString *email;
    int age;
}

@end

@implementation Person
@end

@interface WorkingGroup : NSObject
{
    Person* leader;
    NSMutableSet* members;
}
@end

@implementation WorkingGroup : NSObject
@end

int main() {
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

    WorkingGroup* aGroup = [[WorkingGroup alloc] init];
    [aGroup setValue:[[Person alloc] init] forKey:@"leader"];

    [aGroup setValue:@"suzuki" forKeyPath:@"leader.name"];
    id name = [aGroup valueForKeyPath:@"leader.name"];

    NSLog(@"%@", name);

    [pool release];
    return 0;
}
