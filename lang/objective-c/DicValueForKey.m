#import <Foundation/Foundation.h>

int main() {
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

    NSDictionary* dictionary = [NSMutableDictionary dictionary];
    NSLog(@"%@", dictionary);

    [dictionary setValue:@"value1" forKey:@"key1"];
    NSLog(@"%@", dictionary);

    NSLog(@"%@", [dictionary valueForKey:@"key1"]);

    [pool release];
    return 0;
}
