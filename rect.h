
#import "shape.h"

@interface Rectangle : Shape
@property int l;
@property int w;

-(id) initWithLength : (int) length  andWithWidth : (int) width;
-(id) initWithLength : (int) length  andWithWidth : (int) width 
	  andXpos        : (int) xpos    andYpos      : (int) ypos;
-(NSString*) what;
-(NSString*) area;
@end

