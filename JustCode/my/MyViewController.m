//
//  MyViewController.m
//  JustCode
//
//  Created by 肖凡青 on 2020/11/23.
//  Copyright © 2020 Reasonable. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *view = [[UIView alloc] init];
    view.frame = CGRectMake(100, 100, 100, 200);
    
    [self.view addSubview:view];
    view.backgroundColor = [UIColor orangeColor];
    
}

-(void) viewWillAppear:(BOOL)animated {
    NSLog(@"viewWillAppear");
        
        
}

-(void) viewWillDisappear:(BOOL)animated {
    NSLog(@"viewWillDisappear");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
