//
//  NumbersKeyboard.h
//  Color Keyboard
//
//  Created by Deanna Robertazzi on 7/27/14.
//  Copyright (c) 2014 Deanna Robertazzi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumbersKeyboard : UIView
@property (weak, nonatomic) IBOutlet UIButton *DeleteKey;
@property (weak, nonatomic) IBOutlet UIButton *SymbolKey;
@property (weak, nonatomic) IBOutlet UIButton *LettersKey;
@property (weak, nonatomic) IBOutlet UIButton *GlobeKey;
@property (weak, nonatomic) IBOutlet UIButton *MIcrophoneKey;
@property (weak, nonatomic) IBOutlet UIButton *SpaceKey;
@property (weak, nonatomic) IBOutlet UIButton *ReturnKey;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *numberKeyArray;




@end
