//
//  GameView.h
//  Menu
//
//  Created by David Ryan on 10/25/11.
//  Copyright (c) 2011 DePaul University. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Block;

@interface GameView : UIView {
    Block *A0;
    CGPoint finger;
}

@property (nonatomic, retain) Block *A0;

-(void) gameloop;

@end