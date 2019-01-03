通过继承UIView,在drawInRect里实现一些自定义的操作，包括下划线和placeholder
# CustomUILbael
继承UILabel,实现加入下划线和文字对齐方式
* LineLabel
```
LineLabel *_label = [[LineLabel alloc] initWithFrame:CGRectMake(0, 100, 200, 50) position:LineLabelPositionWithCenter];
_label.text =@"今天是个好日子";
_label.backgroundColor = [UIColor redColor];
_label.lineColor = [UIColor yellowColor];
[_label sizeToFit]; [self.view addSubview:_label];
```
![image](https://github.com/linlingliu/CustomUILbael/blob/master/lineLabel/Jietu20181217-105201.jpg)

* AlignmentLanel
```
MMAlignmentLabel *_lb=[[MMAlignmentLabel alloc] initWithFrame:CGRectMake(0, 100, 200, 200)];
_lb.alignmentStyle = MMAlignmentStyleBottom;
_lb.text = @"今天是个好日子";
_lb.backgroundColor = [UIColor redColor];
_lb.textColor = [UIColor cyanColor];
 [self.view addSubview:_lb];
```
![image](https://github.com/linlingliu/CustomUILbael/blob/master/AlignmentLabel/Top.jpg)
![image](https://github.com/linlingliu/CustomUILbael/blob/master/AlignmentLabel/bottom.jpg)
![image](https://github.com/linlingliu/CustomUILbael/blob/master/AlignmentLabel/middle.jpg)

*textField
```
PlaceholderTextField *_tf=[[PlaceholderTextField alloc] initWithFrame:CGRectMake(0, 100, 200, 50)];
    _tf.placeholder = @"今天是个好日子";
    _tf.backgroundColor = [UIColor grayColor];
    _tf.placeholderColor = [UIColor cyanColor];
    [self.view addSubview:_tf];
```

*textView
```
PlaceholderTextView *_textView=[[PlaceholderTextView alloc] initWithFrame:CGRectMake(0, 100, 200, 50)];
    _textView.placeholder = @"今天是个好日子";
    _textView.placeholderColor =[UIColor blueColor];
    _textView.backgroundColor =[UIColor grayColor];
    [self.view addSubview:_textView];
```
![image](https://github.com/linlingliu/CustomUILbael/blob/master/Placeholder/placeholder.png)

