//
//  MainViewController.m
//  JustCode
//
//  Created by apple on 14-9-17.
//  Copyright (c) 2014年 Reasonable. All rights reserved.
//

#import "MainViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourlViewController.h"


@interface MainViewController ()
- (void)creatControls;
@end

@implementation MainViewController

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
    
    [self creatControls];
    // Do any additional setup after loading the view.
}

//将试图控制器添加到tabbar上面
- (void)creatControls
{
    FirstViewController * firstview=[[FirstViewController alloc] init];
    firstview.tabBarItem.image=[UIImage imageNamed:@"tab_0.png"];
    firstview.tabBarItem.title=@"界面一";
    
    UINavigationController * first = [self withNavigationController:firstview];

    
    SecondViewController * secondview=[[SecondViewController alloc]init];
     secondview.tabBarItem.image=[UIImage imageNamed:@"tab_1.png"];
     secondview.tabBarItem.title=@"界面二";
    
    
     UINavigationController * nvisecond=[self withNavigationController:secondview];
    
    ThirdViewController * third=[[ThirdViewController alloc] init];
     third.tabBarItem.image=[UIImage imageNamed:@"tab_2.png"];
     third.tabBarItem.title=@"界面三";
    
    UINavigationController * nvithird=[self withNavigationController:third];

    
    
    FourlViewController * fourview=[[FourlViewController alloc]init];
     fourview.tabBarItem.image=[UIImage imageNamed:@"tab_3.png"];
     fourview.tabBarItem.title=@"界面四";
    
    
    UINavigationController * nvifourview= [self withNavigationController:fourview];

    
    NSArray * controls=[NSArray arrayWithObjects:
                        first,
                        nvisecond,
                        nvithird,
                        nvifourview,
                        nil];
    
    self.viewControllers=controls;

}

// 给ViewController增加一个导航容器
-(UINavigationController*) withNavigationController:(UIViewController*) viewController {
    UINavigationController * navigationController = [[UINavigationController alloc] init];
    [navigationController addChildViewController:viewController];
    return navigationController;
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
