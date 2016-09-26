# DatePicker_DEMO
This is a simple demo to show how to use DatePicker when editing TextField.
##Screenshots
<div style="float:left;">
    <img src="https://raw.githubusercontent.com/ithree1113/DatePicker_DEMO/master/ScreenShot/shot1.png" width="200">
    <img src="https://raw.githubusercontent.com/ithree1113/DatePicker_DEMO/master/ScreenShot/shot2.png" width="200">
    <img src="https://raw.githubusercontent.com/ithree1113/DatePicker_DEMO/master/ScreenShot/shot3.png" width="200">
</div>

##Usage
###Make DatePicker become the inputview instead of keyboard.
```objc
self.textView.inputView = datePicker;
```
###Create the tool bar on DatePicker.
```objc
UIToolbar *datePickerToolBar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 44)];
UIBarButtonItem *done = [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(dateDone)];
UIBarButtonItem *space = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
datePickerToolBar.items = [NSArray arrayWithObjects:space,done, nil];
    
self.textView.inputAccessoryView = datePickerToolBar;
```

###Setup the date format showed on TextField.
```objc
NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
formatter.timeZone = [NSTimeZone systemTimeZone];
NSString *dataFormat = [NSDateFormatter dateFormatFromTemplate:@"yyyy-MM-dd hh:mm" options:0 locale:[NSLocale systemLocale]];
formatter.dateFormat = dataFormat;
```

## License
DatePicker_DEMO is available under the MIT license. See the [LICENSE](https://raw.githubusercontent.com/ithree1113/DatePicker_DEMO/master/LICENSE) file for more info.