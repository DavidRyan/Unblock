//
//  Block.h
//  Menu
//
//  Created by David Ryan on 10/25/11.
//  Copyright (c) 2011 DePaul University. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Block : NSObject 
{
	CGFloat x;
	CGFloat y;
	CGFloat width;
	CGFloat height;
	float  r;
	float  g;
	float  b;
	float  a;
    
}

@property (assign) CGFloat x;
@property (assign) CGFloat y;
@property (assign) CGFloat width;
@property (assign) CGFloat height;
@property (assign) float r;
@property (assign) float g;
@property (assign) float b;
@property (assign) float a;

@end