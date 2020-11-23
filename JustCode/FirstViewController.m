//
//  FirstViewController.m
//  JustCode
//
//  Created by apple on 14-9-17.
//  Copyright (c) 2014年 Reasonable. All rights reserved.
//

#import "FirstViewController.h"
#import "TestViewController.h"

@interface FirstViewController ()


@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //
    self.view.backgroundColor=[UIColor redColor];
    self.navigationItem.title=@"美女";
    
    //
    UIBarButtonItem * right=[[UIBarButtonItem alloc]initWithTitle:@"我想要" style:(UIBarButtonItemStyleBordered) target:self action:@selector(select:)];
    
    self.navigationItem.rightBarButtonItem=right;
   
    // Do any additional setup after loading the view.
}

- (void)select:(id)sender
{
    NSLog(@"你想要什么");
    TestViewController * testview=[[TestViewController alloc] init];
  [self.navigationController pushViewController: testview animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
