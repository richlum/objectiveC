#import "shape.h"
#define PI 3.14159

@interface Circle : Shape
@property int r;

-(id) initWithRadius : (int) radius;
-(id) initWithRadius : (int) radius andXpos: (int) xpos  andYpos: (int) ypos;
-(NSString*) what; // override parent
-(NSString*) area; // override parent
@end

