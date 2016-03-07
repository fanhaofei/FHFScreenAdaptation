//
//  ViewController.m
//  FHFScreenAdaptationTest
//
//  Created by fhf on 16/3/7.
//  Copyright © 2016年 fhf. All rights reserved.
//

#import "ViewController.h"
#import "FHFScreenAdaptation.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *testBtn = [[UIButton alloc] initWithFrame:CGRectMakeEx(0, 100, 640, 300)];
    testBtn.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:testBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
