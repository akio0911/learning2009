// <コレクションの位置を示すキーパス>.@演算子.<プロパティまでのキーパス>
// @unionOfObjects
// @distinctUnionOfObjects
// @unionOfArrays
// @distinctUnionOfArrays
// @unionOfSets
// @distinctUnionOfSets

#import <Foundation/Foundation.h>

@interface Request : NSObject
{
    NSString* device;
    float price;
}
@end

@implementation Request
@end

int main(int argc, char** argv) {
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

    Request* request1 = [[[Request alloc] init] autorelease];
    [request1 setValue:@"Device1" forKeyPath:@"device"];
    [request1 setValue:[NSNumber numberWithFloat:1.1] forKeyPath:@"price"];
    Request* request2 = [[[Request alloc] init] autorelease];
    [request2 setValue:@"Device2" forKeyPath:@"device"];
    [request2 setValue:[NSNumber numberWithFloat:2.2] forKeyPath:@"price"];
    Request* request3 = [[[Request alloc] init] autorelease];
    [request3 setValue:@"Device3" forKeyPath:@"device"];
    [request3 setValue:[NSNumber numberWithFloat:3.3] forKeyPath:@"price"];
    NSMutableArray* requests = [NSMutableArray arrayWithObjects:request1, request2, request3, nil];
    NSLog(@"%@", [requests valueForKeyPath:@"@sum.price"]);
    NSLog(@"%@", [requests valueForKeyPath:@"@avg.price"]);
    NSLog(@"%@", [requests valueForKeyPath:@"@count"]);
    NSLog(@"%@", [requests valueForKeyPath:@"@max.price"]);
    NSLog(@"%@", [requests valueForKeyPath:@"@min.price"]);
    
    [pool release];
    return 0;
}
