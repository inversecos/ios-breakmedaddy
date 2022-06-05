//
//  ViewController.h
//  breakmedaddy
//
//  Created by Lina Lau on 4/6/2022.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *secret;
- (IBAction)tryMeButton:(id)sender;
-(BOOL)isValidPin:(NSString*)pin;
@end

