#import <Cocoa/Cocoa.h>

@interface Class : Class
{
}

- (id)delegate;
- (id)cellAtRow:(int)row column:(int)col;
- (void)setAutodisplay:(BOOL)flag;

@end

@interface Prawn : NSObject
{
    id order;
    int currentValue;
}

- (id)initWithObject: (id)obj;
- (void)dealloc;
- (int)currentValue;
- (void)setCurrentValue:(int)val;
- (double)evaluation:(int)val;

@end

@implementation Class

- (double)evaluation:(int)val
{
    double tmp = [order proposedBalance: val];
    if(currentValue > (int)tmp)
	tmp = [order proposedBalance: val * 1.25];
    return tmp;
}

@end



int main(){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    printf("Hello, world.¥n");
    [pool release];

    [aString copy];
    width = [node width];
    [[doc filename] retain];

    [printINfo setLeftMargin: 60.0];
    [[[cw window] firstResponder] copy: sender];
    [doc isSameDirectory:[info objectAtIndex: ++num]];

    cell = [albumview cellAtRow:i column:j];
    [manager fileExistsAtPath:dirname isDirectory:&isdir];
    [view lineTo: 1.4142 : (y + 1.0)];

    // copy
    // retain
    // firstResponder
    // copy:
    // objectAtIndex:
    // cellAtRow:column:
    // fileExistsAtPath:isDirectory:
    // lineTo::

    [Class alloc];

    [[Class alloc] init];

    return 0;
}
