//
//  ViewController3.m
//  2015-01-31-WebviewLoadHtmlImageAdaptiveDemo
//
//  Created by TangJR on 15/1/31.
//  Copyright (c) 2015年 tangjr. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.webView loadHTMLString:[self reSizeImageWithHTML:HTML_NO_HEAD] baseURL:nil];
}

- (NSString *)reSizeImageWithHTML:(NSString *)html {
    
    return [NSString stringWithFormat:@"<head><style>img{max-width:320px !important;}</style></head>%@", html];
}

@end
