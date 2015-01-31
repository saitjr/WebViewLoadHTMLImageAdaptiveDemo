//
//  ViewController2.m
//  2015-01-31-WebviewLoadHtmlImageAdaptiveDemo
//
//  Created by TangJR on 15/1/31.
//  Copyright (c) 2015年 tangjr. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 没有<head>标签
//    [self.webView loadHTMLString:[self reSizeImageWithHTMLNoHead:HTML_NO_HEAD] baseURL:nil];
    
    // 有<head>标签
    [self.webView loadHTMLString:[self reSizeImageWithHTMLHadHead:HTML_HAD_HEAD] baseURL:nil];
}

- (NSString *)reSizeImageWithHTMLNoHead:(NSString *)html {
    
    return [NSString stringWithFormat:@"<head><style>img{width:320px !important;}</style></head>%@", html];
}

- (NSString *)reSizeImageWithHTMLHadHead:(NSString *)html {
    
    return [HTML_HAD_HEAD stringByReplacingOccurrencesOfString:@"<head>" withString:@"<head><style>img{width:320px !important;}</style>"];
}

@end