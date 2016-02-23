//
//  ViewController.m
//  CPJTextView
//
//  Created by shuaizhai on 2/23/16.
//  Copyright © 2016 com.zhaishuai.www. All rights reserved.
//

#import "ViewController.h"
#import "CPJTextView.h"

@interface ViewController ()

@property (nonatomic, strong) CPJTextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.textView];
    self.textView.layer.borderWidth = 1.0;
    self.textView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.textView.textView.placeholder = @"请输入内容!";
    self.textView.showCounter = YES;
    self.textView.maxNum = 80;
}

- (CPJTextView *)textView{
    if(!_textView){
        _textView = [[CPJTextView alloc] initWithFrame:CGRectMake(80, 100, 200, 200)];
        [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)]];
    
    }
    
    return _textView;
}

- (void)tapAction{
     [[self view] endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
