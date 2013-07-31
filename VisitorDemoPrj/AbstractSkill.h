@class ActorA;
@class ActorB;

@interface AbstractSkill : NSObject
 -(void)performActorASkill : (ActorA *)actorA;
 -(void)performActorBSkill : (ActorB *)actorB;
@end