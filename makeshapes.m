/*
	@author richardl
	@date	140802
	@short	objective c implementation of shapes class demonstrating inheritance
			polymorphism, static object counter and initial use of NS Collection


*/

#import "circle.h"
#import "rect.h"
#include <stdlib.h>
#include <time.h>

int getrand(){
	return rand() % 10 + 1;
}

int main(int argc, char** argv){

	srand(time(NULL));
	int qty = 10;
	if (argc > 1){
		qty = atoi(argv[1]);
	}
@autoreleasepool{
	Circle* circle = [[Circle alloc] initWithRadius : 4];
	Rectangle* rect = [[Rectangle alloc] initWithLength: 2 andWithWidth:3 ];	
	NSLog(@"%@", [circle describe]); 
	NSLog(@"%@", [rect   describe]); 

	NSMutableArray* shapes = [[NSMutableArray alloc] init];
	int i;
	for (i=0; i<qty; i++){
		if ((getrand() % 2) == 1) {
			[ shapes addObject: [[Circle alloc] initWithRadius : getrand()
												andXpos 	   : getrand()
												andYpos 	   : getrand() ] ];
		}else{
			[ shapes addObject: [[Rectangle alloc] initWithLength : getrand()
												andWithWidth      : getrand()
												andXpos 		  : getrand()
												andYpos			  : getrand() ] ];
		}		
	}
	NSLog(@"i = %d,  count = %lu",i,[shapes count]);

	Shape* s;
	for (s in shapes){
		NSLog(@"%@",[s describe]);
//		[s release];  // disallowed if compiled with arc = automatic ref counting
	}
}
	sleep(10); /* to prove that memory manger is performing deallocation, */
	NSLog(@"Last line reached"); 

}
