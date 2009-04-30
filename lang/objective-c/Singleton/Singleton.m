@implementation Singleton
/* 
// マルチスレッドを考慮していない方法
+ (id)instance
{
    static Singleton* _instance = nil;
    if(!_instance){
	_instance = [[Singleton alloc] init];
    }
    return _instance;
}
*/
// マルチスレッドを考慮した方法
/*
static Singleton* _instance = nil;

+ (void)load // クラスがランタイムに読み込まれるときに呼ばれる
{
    if(!_instance){
	_instance = [[Singleton alloc] init];
    }
}

+ (id)instance
{
    return _instance;
}
*/
// サブクラスでの拡張を考慮した方法
+ (id)instance
{
    static id _instance = nil;
    if(!_instance){
	_instance = [[self alloc] init];
    }
    return _instance;
}
@end
