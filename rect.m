
#import "rect.h"

@implementation Rectangle 

-(id) initWithLength : (int) length  andWithWidth : (int) width {
	self = [self initWithLength: length andWithWidth: width  andXpos: 0  andYpos: 0 ];
	return self;
}

-(id) initWithLength : (int) length  andWithWidth : (int) width 
	  andXpos        : (int) xpos    andYpos      : (int) ypos {
	self = [super initWithXpos: xpos andWithYpos: ypos ];
	self->_l = length;
	self->_w = width;
	return self;
}

-(NSString*) what {
	return [NSString stringWithFormat:@"rectangle length= %d, width= %d", self->_l, self->_w];
}

-(NSString*) area {
	double my_area = self->_l * self->_w;
	NSString* result = [NSString stringWithFormat:@"%f", my_area ];
	return result;
}



@end
