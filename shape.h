#import <Foundation/Foundation.h>

@interface Shape : NSObject
@property int x;
@property int y;
@property int idnum;


-(id) initWithXpos : (int) xpos andWithYpos : (int) ypos;

-(NSString*) where;
-(NSString*) what;
-(NSString*) describe;
-(NSString*) area;
@end
// file level visibility. scope within class only, not sub classes.` 
static int shapeCount = 0;
