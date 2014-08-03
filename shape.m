#import "shape.h"

@implementation Shape

-(id) initWithXpos : (int) xpos andWithYpos : (int) ypos{
	self = [super init];
	self->_x = xpos;
	self->_y = ypos;
	self->_idnum = shapeCount++; // using static counter
	return self;
}

-(NSString*) where{
	int position[] = { self->_x, self->_y };
	NSString* result = [NSString stringWithFormat:@"at: %d, %d ", self->_x,self->_y];

	return result;
}
// should be overrridden by child method, no virtual / abstract in objective c.
-(NSString*) what{
	return @"Shape";
}
// should be overrridden by child method, no virtual / abstract in objective c.
-(NSString*) area{
	return @"0.0";
}

// dynamically call child what and area methods if child overrides them (as they should)
-(NSString*) describe{

	return [NSString stringWithFormat:@"Shape %3d is a %@ located at %@ with area %@ ",
				[self idnum] ,[self what], [self where], [self area] ];
}

-(void) dealloc{
	NSLog(@"deallocating shape id %d",self->_idnum); // sort of a dtor, finalize is another
	//[super dealloc]; // arc disallows
}
@end
