#import "ActorB.h"

@implementation ActorB

-(void)accept : (AbstractSkill *) skill
{
	[skill performActorBSkill:self];
}

-(void)bomb1
{
	NSLog(@"Actor B, 试用了 第 1 种 爆破");
}

-(void)bomb2
{
	NSLog(@"Actor B, 试用了 第 2 种 爆破");
}

@end