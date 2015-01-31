//
//  ViewController1.m
//  2015-01-31-WebviewLoadHtmlImageAdaptiveDemo
//
//  Created by TangJR on 15/1/31.
//  Copyright (c) 2015年 tangjr. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 没有<head>标签
    [self.webView loadHTMLString:HTML_NO_HEAD baseURL:nil];
    
    // 有<head>标签
//    [self.webView loadHTMLString:HTML_HAD_HEAD baseURL:nil];
}

@end
