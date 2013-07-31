#import "ActorA.h"

@implementation ActorA

-(void)accept : (AbstractSkill *) skill
{
	[skill performActorASkill:self];
}

-(void)gun1
{
	NSLog(@"Actor A , 使用型号为 1 的手枪");
}

-(void)gun2
{
	NSLog(@"Actor A , 使用型号为 2 的手枪");
}

@end