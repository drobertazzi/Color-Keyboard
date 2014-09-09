//
//  Keyboard.h
//  Color Keyboard
//
//  Created by Deanna Robertazzi on 7/20/14.
//  Copyright (c) 2014 Deanna Robertazzi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Keyboard : UIView
@property (weak, nonatomic) IBOutlet UIButton *DeleteButton;
@property (weak, nonatomic) IBOutlet UIButton *ReturnButton;
@property (weak, nonatomic) IBOutlet UIButton *SpaceButton;
@property (weak, nonatomic) IBOutlet UIButton *MicrophoneButton;
@property (weak, nonatomic) IBOutlet UIButton *ArrowButton;
@property (weak, nonatomic) IBOutlet UIButton *GlobeButton;
@property (weak, nonatomic) IBOutlet UIButton *NumbersButton;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *keysArray;









@end
