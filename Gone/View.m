//
//  View.m
//  Gone
//
//  Created by NYU User on 10/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blueColor];

        //Trailing blank to avoid cutting off last letter
        //because italic leans to the right.
        NSString *text = @"GONE  WITH  THE  WIND ";

        CGRect b = self.bounds;
        UIFont *font = [UIFont italicSystemFontOfSize: b.size.height];
        CGSize size = [text sizeWithFont: font];

        CGRect f = CGRectMake(
            b.size.width,
            0,
            size.width,
            size.height
        );
        
        CGRect g = CGRectMake(
            0,
            0,
            size.width,
            size.height
        );

        label = [[UILabel alloc] initWithFrame: f];
        label.font = font;
        label.backgroundColor = [UIColor clearColor];
        label.textColor = [UIColor whiteColor];
        label.text = text;
        [self addSubview: label];
       
        UIFont *presentFont = [UIFont systemFontOfSize: 20 ];
        
        david = [[UILabel alloc] initWithFrame: g];
        david.text = @"David O. Selznick";
        david.font = presentFont;
        david.backgroundColor = [UIColor clearColor];
        david.textColor = [UIColor blackColor];

        [self addSubview: david];
        
        presents = [[UILabel alloc] initWithFrame: g];
        presents.text = @"presents";
        presents.font = presentFont;
        presents.backgroundColor = [UIColor clearColor];
        presents.textColor = [UIColor blackColor];
        [self addSubview: presents];
        
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect) rect
{
    // Drawing code
    [UIView animateWithDuration: 2
                          delay: 2
                        options: UIViewAnimationOptionShowHideTransitionViews
                     animations: ^{
                         //Move the label far enough to the left
                         //so that it's out of the View.
                         david.center = CGPointMake(
                                                    self.bounds.size.width / 2,
                                                    self.bounds.size.height / 2
                                                    );
                     }
                     completion: ^(BOOL function) {
                         //david.backgroundColor = [UIColor greenColor];
                     }
     ];
    
    // Drawing code
    [UIView animateWithDuration: 2
                          delay: 4
                        options: UIViewAnimationOptionShowHideTransitionViews
                     animations: ^{
                         //Move the label far enough to the left
                         //so that it's out of the View.
                         presents.center = CGPointMake(
                                                    self.bounds.size.width / 2,
                                                    self.bounds.size.height / 2
                                                    );
                     }
                     completion: ^(BOOL function) {
                         //presents.backgroundColor = [UIColor redColor];
                     }
     ];
    
    // Drawing code
    [UIView animateWithDuration: 25
        delay: 10
        options: UIViewAnimationOptionCurveLinear
        animations: ^{
            //Move the label far enough to the left
            //so that it's out of the View.
            label.center = CGPointMake(
                -label.bounds.size.width / 2,
                self.bounds.size.height / 2
            );
        }
        completion: NULL
     ];
}


@end
