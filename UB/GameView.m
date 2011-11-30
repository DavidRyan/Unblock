//
//  GameView.m
//  Blocs
//
//  Created by David Ryan on 10/25/11.
//  Copyright (c) 2011 DePaul University. All rights reserved.
//


#import "GameView.h"
#import "Block.h"

@implementation GameView


#define FramesPerSecond (1.0f/8.0f)
#define ScreenWidth (300.0f)
#define ScreenHeight (300.0f)


@synthesize A0;

-(id)initWithCoder:(NSCoder *)aDecoder {
    
    
    if ((self = [super initWithCoder:aDecoder])) { 
        
        A0 = [[Block alloc] init];
        
        A0.x = 100;
        A0.y = 200;
        A0.width = 100;
        A0.height = 50;
        
        A0.r = 1;
        A0.g = 1;
        A0.b = 0;
        A0.a = 0.5;
        
    }
    
    [NSTimer scheduledTimerWithTimeInterval: FramesPerSecond target:self selector:@selector(gameloop) userInfo:nil repeats:YES];
    
    return self;
    
    
}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event 
{
	
	NSArray *pTouches = [touches allObjects];
	UITouch *first = [pTouches objectAtIndex:0];
	
	finger = [first locationInView:self];
	
	//NSLog(@"Touch BEGIN %f  %f >>>>>\n", pt.x, pt.y);
}

- (void)drawRect:(CGRect)rect {
    
	CGContextRef myContext = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor (myContext, A0.r, A0.g, A0.b, A0.a );// 3
    CGContextFillRect (myContext, CGRectMake(A0.x, A0.y, A0.width, A0.height) );
	
}

- (id)initWithFrame:(CGRect)frame {
	
	//NSLog(@"UnBlockView: initwithFrame\n");
	
    if ((self = [super initWithFrame:frame])) {
        // Initialization code
    }
	
	//[self setNeedsDisplay];
	
    return self;
}

- (void)gameloop {
    
    A0.y = finger.y;
    A0.x = finger.x;
    
    [self setNeedsDisplay];
}

@end
