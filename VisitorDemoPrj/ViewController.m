#import "ViewController.h"
#import "AbstractSkill.h"
#import "AbstractActor.h"
#import "SkillA.h"
#import "SkillB.h"
#import "ActorA.h"
#import "ActorB.h"

@interface ViewController ()
{
	NSMutableArray *list;
    
	AbstractSkill *curSkill;
	SkillA *skillA;
	SkillB *skillB;
    
	NSTimer *timer;
	NSInteger maxFightCount;
	NSInteger curFightCount;
}
@end



@implementation ViewController

- (void)viewDidLoad
{
    
	//战斗 2 次
	maxFightCount = 2;
	curFightCount = 0;
    
	list = [[NSMutableArray alloc] init];
    
    //创建2个队员,一起组队去战斗
    ActorA *actorA = [[ActorA alloc] init];
    ActorB *actorB = [[ActorB alloc] init];
    
    [list addObject:actorA];
    [list addObject:actorB];
    
    //skill创建
    skillA = [[SkillA alloc] init];
    skillB = [[SkillB alloc] init];
    
    timer = [NSTimer scheduledTimerWithTimeInterval: 5
                                             target: self
                                           selector: @selector(handleTimer:)
                                           userInfo: nil
                                            repeats: YES];
    
    
}

-(void)handleTimer:(NSTimer *)sender
{
	curFightCount++;
    
	if(curFightCount == 1)
	{
		//释放第一轮技能
		curSkill = skillA;
	}
	else if(curFightCount == 2)
	{
		//释放第二轮技能
		curSkill = skillB;
	}
    
	//释放技能
	[self update];
    
    
    //战斗完成
	if(curFightCount == maxFightCount)
	{
		[timer invalidate];
        NSLog(@"战斗完成!");
	}
}

-(void)update
{
	int i;
	for(i = 0 ;i < [list count] ;i++)
	{
		AbstractActor *actor = [list objectAtIndex:i];
		[actor accept:curSkill];
	}
}
@end