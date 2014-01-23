//
//  ViewController.h
//  HelloGitHub
//
//  Created by 吉野　恭平 on 13/11/14.
//  Copyright (c) 2013年 University of kitakyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
 IBOutlet UIButton *rei;
 IBOutlet UIButton *ten;
 IBOutlet UIButton *iti;
 IBOutlet UIButton *ni;
 IBOutlet UIButton *san;
 IBOutlet UIButton *yon;
 IBOutlet UIButton *go;
 IBOutlet UIButton *roku;
 IBOutlet UIButton *nana;
 IBOutlet UIButton *hati;
 IBOutlet UIButton *kyuu;
 IBOutlet UIButton *c;
 IBOutlet UIButton *tasu;
 IBOutlet UIButton *hiku;
 IBOutlet UIButton *kakeru;
 IBOutlet UIButton *waru;
 IBOutlet UIButton *ihugou;
 IBOutlet UIButton *ikoru;
 IBOutlet UIButton *hatena;
 IBOutlet UITextField *kekka;
 IBOutlet UIImageView *tek;
 IBOutlet UIButton *y;
 
    BOOL stratInput;
    int currentValue;
    int operation;
}

- (IBAction)suuzi_down:(id)sender;
- (IBAction)tasuhiku_down:(id)sender;
- (IBAction)ikoru_down:(id)sender;
- (IBAction)c_down:(id)sender;
- (IBAction)hatena_down:(id)sender;
- (IBAction)y_down:(id)sender;

@end

