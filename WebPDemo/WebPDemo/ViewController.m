//
//  ViewController.m
//  WebPDemo
//
//  Created by YuTengxiao on 16/10/11.
//  Copyright © 2016年 YuTengxiao. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"
#import "UIImage+WebP.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
    [self.view addSubview:self.imageView];
    
//    UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(110, 110, 100, 100)];
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"webp"];
//    NSLog(@"%@",path);
//    iv.image = [UIImage imageWithWebP:path];
//    [self.view addSubview:iv];
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"模拟考试-图标速记" ofType:@""];
    NSString *wholePath = [path stringByAppendingString:@"/signs/trafficSignAll/fuzhuSign/1.webp"];
    
    //asset:///signs/trafficSignAll/fuzhuSign/1.webp
    UIImageView *iv2 = [[UIImageView alloc] initWithFrame:CGRectMake(110, 110, 100, 100)];
    
    iv2.image = [UIImage imageWithWebP:wholePath];
    [self.view addSubview:iv2];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 将WebP.framework，UIImage+WebP.h, UIImage+WebP.m 拖到工程.
    // 如果需要使用网络下载，可以在build setting中设置preprocessor ... 中增加编译选项:SD_WEBP=1
    // 然后修改UIImage+MultiFormat.m中，将image = [UIImage sd_imageWithWebPData:data]; 修改为image = [UIImage imageWithWebPData:data];
    // 这里没找到url，没测试
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:@"这里放webP的URL地址试试看"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
