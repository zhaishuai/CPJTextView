# CPJTextView
iOS平台的文本输入控件，可以限制输入字数并显示当前输入的字数
#Screenshot
![CPJTextView预览图](https://github.com/zhaishuai/CPJTextView/blob/master/preview.png)
#How to Use
CPJImageClipping使用起来非常简单，不需要编译静态库也不需要其他额外的配置只需要将<code>CPJTextView<code/>文件夹下的文件拷贝至自己的工程下即可.
##代码示例
``` objective-c
- (void)cofigTextView {
    [self.view addSubview:self.textView];
    self.textView.layer.borderWidth = 1.0;
    self.textView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.textView.textView.placeholder = @"请输入内容!";
    
    // 显示计数器
    //
    self.textView.showCounter = YES;
    
    // 设置最大字数限制
    //
    self.textView.maxNum = 80;
}
```
