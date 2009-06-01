#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *name;
    NSString *email;
    int age;
}

//@property (nonatomic, retain) NSString* name;
//@property (nonatomic, retain) NSString* email;
//@property (nonatomic, assign) int age;

@end

@implementation Person

//@synthesize name;
//@synthesize email;
//@synthesize age;

// - (void)setName:(NSString*)aName
// {
//     NSLog(@"Access: setName:\n");
//     name = aName;
// }

// - (NSString*)email
// {
//     NSLog(@"Access: email:\n");
//     return email;
// }

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
