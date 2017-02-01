//
//  ViewController.m
//  TicTacToe
//
//  Created by Clayton Dittman on 1/26/17.
//  Copyright © 2017 Clayton Dittman. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;

@end

bool turn;
bool pressedArr[5][5];
UIButton *buttonArr [5][5];

void buttonAction(UIButton *temp, int i, int j){
    if(!pressedArr[i][j]){
        if(turn){ [temp setTitle:@"X" forState:UIControlStateNormal];}
        else{ [temp setTitle:@"O" forState:UIControlStateNormal];}
        buttonArr[i][j] = temp;
        pressedArr[i][j] = YES;
        turn = !turn;
    }
}

@implementation ViewController

- (IBAction)a1:(UIButton *)sender {
    buttonAction(sender, 0, 0);
}
- (IBAction)a2:(UIButton *)sender {
    buttonAction(sender, 0, 1);
}
- (IBAction)a3:(UIButton *)sender {
    buttonAction(sender, 0, 2);
}
- (IBAction)a4:(UIButton *)sender {
    buttonAction(sender, 0, 3);
}
- (IBAction)a5:(UIButton *)sender {
    buttonAction(sender, 0, 4);
}
- (IBAction)b1:(UIButton *)sender {
    buttonAction(sender, 1, 0);
}
- (IBAction)b2:(UIButton *)sender {
    buttonAction(sender, 1, 1);
}
- (IBAction)b3:(UIButton *)sender {
    buttonAction(sender, 1, 2);
}
- (IBAction)b4:(UIButton *)sender {
    buttonAction(sender, 1, 3);
}
- (IBAction)b5:(UIButton *)sender {
    buttonAction(sender, 1, 4);
}
- (IBAction)c1:(UIButton *)sender {
    buttonAction(sender, 2, 0);
}
- (IBAction)c2:(UIButton *)sender {
    buttonAction(sender, 2, 1);
}
- (IBAction)c3:(UIButton *)sender {
    buttonAction(sender, 2, 2);
}
- (IBAction)c4:(UIButton *)sender {
    buttonAction(sender, 2, 3);
}
- (IBAction)c5:(UIButton *)sender {
    buttonAction(sender, 2, 4);
}
- (IBAction)d1:(UIButton *)sender {
    buttonAction(sender, 3, 0);
}
- (IBAction)d2:(UIButton *)sender {
    buttonAction(sender, 3, 1);
}
- (IBAction)d3:(UIButton *)sender {
    buttonAction(sender, 3, 2);
}
- (IBAction)d4:(UIButton *)sender {
    buttonAction(sender, 3, 3);
}
- (IBAction)d5:(UIButton *)sender {
    buttonAction(sender, 3, 4);
}
- (IBAction)e1:(UIButton *)sender {
    buttonAction(sender, 4, 0);
}
- (IBAction)e2:(UIButton *)sender {
    buttonAction(sender, 4, 1);
}
- (IBAction)e3:(UIButton *)sender {
    buttonAction(sender, 4, 2);
}
- (IBAction)e4:(UIButton *)sender {
    buttonAction(sender, 4, 3);
}
- (IBAction)e5:(UIButton *)sender {
    buttonAction(sender, 4, 4);
}





- (IBAction)reset:(UIButton *)sender {
    turn = NO;
    for(int i =0; i<5; ++i)
        for(int j=0; j<5; ++j){
            pressedArr[i][j] = NO;
            if(buttonArr[i][j] != NULL)
                [buttonArr[i][j] setTitle:@"" forState:UIControlStateNormal];
        }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //UIImageView *backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"grid.jpeg"]];
    //[self.view addSubview:backgroundView];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
