#import <Foundation/Foundation.h>

int main(int argc, char** argv) {
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

    id path = [NSString stringWithCString:argv[1]
			encoding:NSASCIIStringEncoding];
   id data = [NSData dataWithContentsOfFile:path];
    id plist = [NSPropertyListSerialization 
		   propertyListFromData:data
		   mutabilityOption: NSPropertyListMutableContainers
		   format: NULL errorDescription:nil];
   id aSet = [NSSet setWithArray:plist];

   NSLog(@"1: %@\n", [plist valueForKey:@"division"]);
   NSLog(@"2: %@\n", [aSet valueForKey:@"division"]);
   NSLog(@"3: %@\n", [plist valueForKeyPath:@"list.name"]);
   NSLog(@"4: %@\n", [plist valueForKeyPath:@"list.requests.device"]);
   [plist setValue:@"10" forKeyPath:@"list.requests.price"];
   NSLog(@"5: %@\n", [plist valueForKeyPath:@"list.requests"]);

    [pool release];
    return 0;
}
