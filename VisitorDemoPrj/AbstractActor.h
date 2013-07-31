@class AbstractSkill;

@interface AbstractActor : NSObject
-(void)accept :(AbstractSkill *)skill;
@end