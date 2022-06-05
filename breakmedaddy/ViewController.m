//
//  ViewController.m
//  breakmedaddy
//
//  Created by Lina Lau on 4/6/2022.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


// Checks if the input pw is legit (dont code like this in a real app :P )
-(BOOL)isValidPin:(NSString *)pin {
    
    BOOL isValidPin;
    
    // Official pw to check against
    NSString *password = @"babiesareevil";
    
    if ([pin isEqualToString:password]) {
        isValidPin = TRUE;
    } else {
        isValidPin = FALSE;
    }
    
    return isValidPin;
}


- (IBAction)tryMeButton:(id)sender {

    // Perform check on pw
    if ([self isValidPin:self.secret.text]) {
        // If true, set label to "SUCCESS"
        self.label.text = @"SUCCESSSSSSSFULLY BYPASSED! xD";
    } else {
        self.label.text = @"Try Harder Little B";
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.secret resignFirstResponder];
}

@end
