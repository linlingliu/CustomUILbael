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
