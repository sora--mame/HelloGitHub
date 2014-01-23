//
//  ViewController.m
//  HelloGitHub
//
//  Created by 吉野　恭平 on 13/11/14.
//  Copyright (c) 2013年 University of kitakyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
UIImage *gu_img;
int k,z;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    stratInput = YES;
    currentValue = 0;
    gu_img = [UIImage imageNamed:@"oh.png"];}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)suuzi_down:(id)sender{
    UIButton *b = (UIButton * )sender;
    z=0;
    if( stratInput){
        if(b.tag == 0){
            if(k >= 1){
             b.tag=0;
            }else{
                return;
            }
        }
        
         kekka.text = [NSString stringWithFormat:@"%d",b.tag];
            stratInput =  NO;
    }
    else
    {
        kekka.text = [NSString stringWithFormat:@"%@%d",kekka.text,b.tag];
    }
}

- (IBAction)tasuhiku_down:(id)sender
{   k++;
    if(k>1){
     if (operation == 0){
        currentValue += [kekka.text intValue];
     }else if(operation == 1)
     {
        currentValue -= [kekka.text intValue];
     }else if (operation == 2){
        currentValue *= [kekka.text intValue];
     }else if(operation == 3)
     {
        currentValue /= [kekka.text intValue];
     }
        kekka.text = [NSString stringWithFormat:@"%d",currentValue];
        stratInput = YES;
    }
    UIButton *b = (UIButton *)sender;
    currentValue = [kekka.text intValue];
    operation = b.tag;
    if (operation == 4)
    {
        currentValue = (-1)*currentValue;
        kekka.text = [NSString stringWithFormat:@"%d",currentValue];
    }
    stratInput= YES;
}


- (IBAction)ikoru_down:(id)sender
{   k=0;z++;
   if(z<2){
    if (operation == 0){
        currentValue += [kekka.text intValue];
    }else if(operation == 1)
    {
         currentValue -= [kekka.text intValue];
    }else if (operation == 2){
         currentValue *= [kekka.text intValue];
    }else if (operation == 3)
    {
         currentValue /= [kekka.text intValue];
    }
    kekka.text = [NSString stringWithFormat:@"%d",currentValue];
    stratInput = YES;
  }
    kekka.text = [NSString stringWithFormat:@"%d",currentValue];
}

- (IBAction)hatena_down:(id)sender;
{
    [tek setImage:gu_img];
}

- (IBAction)y_down:(id)sender;{
    [tek setImage:nil];}

- (IBAction)c_down:(id)sender
{
    k=0;
    kekka.text = @"0";
    stratInput = YES;
    //currentValue=0;
}
@end
