//
//  ViewController.m
//  iOSUtilityClass
//
//  Created by Alara on 16/7/25.
//  Copyright © 2016年 Alara. All rights reserved.
//

#import "ViewController.h"

#import "ColorViewController.h" // 颜色色值的转换
#import "InputViewController.h" // 注册登录输入框
#import "JudgeDeviceController.h" // 判断设备的机型
#import "ChangeFrameViewController.h" // 快速修改frame值

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *dataArr;

@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

static NSString *cellIdentifier = @"cellIdentifier";
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"工具类";
    
    _dataArr = [NSMutableArray arrayWithObjects:@"颜色转换",@"注册登录输入框",@"判断设备机型",@"改变frame值", nil];
    _tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
}

#pragma mark - UITableViewDelegate && DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = _dataArr[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   
    switch (indexPath.row) {
        case 0:
        {
            ColorViewController *colorVC = [[ColorViewController alloc] init];
            colorVC.title = _dataArr[indexPath.row];
            [self.navigationController pushViewController:colorVC animated:YES];
            
        }
            break;
        case 1:
        {
        
            InputViewController *inputVC = [[InputViewController alloc] init];
            inputVC.title = _dataArr[indexPath.row];
            [self.navigationController pushViewController:inputVC animated:YES];
        }
            break;
        case 2:
        {
            JudgeDeviceController *judgeDeviceVC = [[JudgeDeviceController alloc] init];
            judgeDeviceVC.title = _dataArr[indexPath.row];
            [self.navigationController pushViewController:judgeDeviceVC animated:YES];
        }
            break;
        case 3:
        {
            ChangeFrameViewController *changeFrameVC = [[ChangeFrameViewController alloc] init];
            changeFrameVC.title = _dataArr[indexPath.row];
            [self.navigationController pushViewController:changeFrameVC animated:YES];
        }
            break;
        default:
            break;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
