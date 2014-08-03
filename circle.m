#import "circle.h"

@implementation Circle

-(id) initWithRadius : (int) radius {
	self = [self initWithRadius: radius andXpos: 0  andYpos: 0 ];
	return self;
}

-(id) initWithRadius : (int) radius  andXpos : (int) xpos  andYpos:(int) ypos {
	self = [super initWithXpos: xpos andWithYpos: ypos ];
	self->_r = radius;
	return self;
}

-(NSString*) what {
	return [NSString stringWithFormat:@"Circle radius %d", self->_r];
}

-(NSString*) area {
	double my_area = PI * self->_r * self->_r;
	NSString* result = [NSString stringWithFormat:@"%f", my_area ];
	return result;
}



@end
