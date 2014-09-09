//
//  NumbersVC.m
//  Color Keyboard
//
//  Created by Deanna Robertazzi on 7/27/14.
//  Copyright (c) 2014 Deanna Robertazzi. All rights reserved.
//

#import "NumbersVC.h"

@interface UIPageViewController ()
@property (strong, nonatomic) Keyboard *keyboard;
@end

@implementation KeyboardViewController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //Perform custom initializiation work here
    }
    return self;
}

- (void)updateViewConstraints {
    [super updateViewConstraints];
    
    // Add custom view sizing constraints here
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Perform custom UI setup here
    self.keyboard = [[[NSBundle mainBundle] loadNibNamed:@"Keyboard" owner:nil options:nil] objectAtIndex:0];
    [self addGesturestoKeyboard];
    //self.inputView = self.keyboard;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated
}

- (void)textWillChange:(id<UITextInput>)textInput {
    // The app is about to change the document's contents. Perform any preparation here.
}

- (void)textDidChange:(id<UITextInput>)textInput {
    // The app has just changed the document's contents, the document context has been updated.
    
    UIColor *textColor = nil;
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark) {
        textColor = [UIColor whiteColor];
    } else {
        textColor = [UIColor blackColor];
    }
    
}
#pragma mark Keyboards
- (void)addGesturestoKeyboard {
    [self.keyboard.DeleteButton addTarget:self action:@selector(pressDeleteButton)forControlEvents:UIControlEventTouchUpInside];
    
    [self.keyboard.SpaceButton addTarget:self action:@selector(pressSpaceButton)forControlEvents:UIControlEventTouchUpInside];
    [self.keyboard.ReturnButton addTarget:self action:@selector(pressReturnButton)forControlEvents:UIControlEventTouchUpInside];
    //Change to next keyboard
    [self.keyboard.GlobeButton addTarget:self action:@selector(advanceToNextInputMode) forControlEvents:UIControlEventTouchUpInside];
    for (UIButton *key in self.keyboard.keysArray) {
        [key addTarget:self action:@selector(pressKey:) forControlEvents:UIControlEventTouchUpInside];
    }
    
}

-(void)pressDeleteButton {
    [self.textDocumentProxy deleteBackward];
}
-(void)pressSpaceButton {
    [self.textDocumentProxy insertText:@" "];
}
-(void)pressReturnButton {
    [self.textDocumentProxy insertText:@"\n"];
}
-(void)pressKey:(UIButton *)key {
    [self.textDocumentProxy insertText:[key currentTitle]];
}



@end
