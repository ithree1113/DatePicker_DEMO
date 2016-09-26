//
//  ViewController.m
//  DatePicker
//
//  Created by user11 on 2016/7/27.
//  Copyright © 2016年 user11. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIDatePicker *datePicker;
}
@property (weak, nonatomic) IBOutlet UITextField *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    datePicker = [[UIDatePicker alloc]init];
    datePicker.datePickerMode = UIDatePickerModeDate;
    self.textView.inputView = datePicker;
    
    NSDate *now = [NSDate date];
    [datePicker setDate:now animated:YES];
    datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:0];
//    self.datePicker.maximumDate = [NSDate dateWithTimeIntervalSinceNow:4* 24 * 60 * 60];
    
    UIToolbar *datePickerToolBar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 44)];
    UIBarButtonItem *done = [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(dateDone)];
    UIBarButtonItem *space = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    datePickerToolBar.items = [NSArray arrayWithObjects:space,done, nil];
    
    self.textView.inputAccessoryView = datePickerToolBar;
    
}


- (void)dateDone {
    
    NSDate *selectDate = [datePicker date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.timeZone = [NSTimeZone systemTimeZone];
    NSString *dataFormat = [NSDateFormatter dateFormatFromTemplate:@"yyyy-MM-dd hh:mm" options:0 locale:[NSLocale systemLocale]];
    formatter.dateFormat = dataFormat;
    
    self.textView.text = [NSString stringWithFormat:@"%@",[formatter stringFromDate:selectDate]];
    
    [self.textView resignFirstResponder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
