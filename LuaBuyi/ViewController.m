//
//  ViewController.m
//  LuaBuyi
//
//  Created by buyi on 16/6/6.
//  Copyright © 2016年 buyi. All rights reserved.
//

#import "ViewController.h"
#import "LView.h" // 导入 LuaView

@interface ViewController ()
@property(nonatomic, strong) LView* lv;  // 定义 LuaView
@end

@implementation ViewController

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view, typically from a nib.
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 初始化 LuaView
    CGRect lvRect = self.view.bounds;
    lvRect.origin = CGPointZero;
    
    self.lv = [[LView alloc] initWithFrame:lvRect];
    self.lv.viewController = self;
    
    [self.view addSubview:self.lv];
    
    // 运行 HelloWorld.lua
    [self.lv runFile: @"hello.lua"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
