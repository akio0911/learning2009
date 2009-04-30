@implementation Singleton

+ (id)instance
{
    static Singleton* _instance = nil;
    if(!_instance){
	_instance = [[Singleton alloc] init];
    }
    return _instance;
}

@end
