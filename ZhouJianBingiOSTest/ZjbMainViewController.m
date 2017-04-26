//
//  ZjbMainViewController.m
//  ZhouJianBingiOSTest
//
//  Created by Terra MacBook on 16/5/19.
//  Copyright © 2016年 Jianbing Zhou. All rights reserved.
//

#import "ZjbMainViewController.h"
#import "UMSocial.h"
#import "UMSocialData.h"
#import <AlipaySDK/AlipaySDK.h>
#import "Order.h"
#import "DataSigner.h"
#define UMappKey  @"573ec7f7e0f55a65f8000eaa"
@interface ZjbMainViewController ()<UMSocialUIDelegate>

@end

@implementation ZjbMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"主页";
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 64, 100, 30)];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"分享" forState:UIControlStateNormal];
    
    
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 104, 100, 30)];
    btn1.backgroundColor = [UIColor greenColor];
    [btn1 addTarget:self action:@selector(btn1Click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    [btn1 setTitle:@"支付" forState:UIControlStateNormal];
}

//支付
- (void)btn1Click {
    NSString *partner = @"2088611784077096";
    NSString *seller = @"srmls@qq.com";
    NSString *privateKey =

    @"MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAMcYsBKPuNbfDIbGpqR6E3PEysyMkwa7cElqs+YawJO8MWUbaRH+zEtYhjd9w5WzoukJ097H8nT0pTVrwOb+Cgck6jBYeQWoVyAwPhr6uMiVV8HyK/mhrqFCH4g8jcwD7P4xcsIMU5HCK4/d6MRqcj4c75EZany0ZuvOyvRxo2adAgMBAAECgYAhka4OUyFNSWppRxFN5i9lc6bl+kXH+s6h8lXG1Hfn8PE7JPYATL/RbGmk7ZWOpi0vsbKBe6ELyzwX18U8rVSvNvkQBcLAJRenBERc2Iw3MrM9taHVh9NvvoWgq/fl4ppPUI+63MojcMEMe/oBJrDXt45FVWjUJ0tyteGavCu4wQJBAP+B3EgOqwP8FUiNtlUmLU910QJnS95JUS2HgCAV3eFjuMoSdzLU9Okgl3UzBAMFUpwS4iYpdklXr6S5CUpr/rkCQQDHevpu94ncYRBIIE/12KuzXJR6dYMM6CBDi63QX5uZ2ArQ/tE1ZlPxQ7+ITIuczaha3iVAHqedP9cTxpBXlFUFAkEAkKgE/wbO68KciicxQ6QJoyMg4it5WLBJtW0xrPi0VhcPV9h8g9rtjc9V8JShgNRSoOpP/ysaPQvX9XqNOAVMgQJAd57jdo+yeBksrlPSH1ci/5fQ4e59+8tnLZohTQdIQ+Ut904XHrKSO+eof4+HWSxqfLMiG2VGliGmVBGKlTo6EQJAOeRJqxcL/aFNHWRllJPCO40T64XYXmxQD0daHO1Lew+dui1Xo2vUILbhiCWx+GdTCnFsspKa5hPPWccI0OZ+Ow==";
    
    
    //用终端生成私钥匙
//    privateKey =
//    @"MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAKgQsWt4VhM9r7NeD1yHVjEh+jGnqf3Atcz9ysD47glLJEcMwObzJmKwNS83mLU0KlcDSkzdziXDKjUCLwPcmv0OPV6QPwWSOzWxrjDfrx25gAQasXNhHj7wT0kjS1E7XrzPYghtPoPPU88n9Xu0rUETgtzgm5m4q7IQRo8erH3bAgMBAAECgYAYo5nfL50u5PRFT5zg69ZvDZQog3Qgh4gfrXV0JQqAwktnPy9orG0MOtkROw1gQ22RpCHYcwwt7Rba/p716fmusu//Z4A2Yk+J3lNnfzRAmVuhqMq18BFWlAnMNP5v3Kcp8YIbAql98eFSAxFGXG8harBX5NOA80Nward8kDMdwQJBANhmyHdvEfC6J2ZEXoLCAzSiMYpiglPFNLRtUOGCknMqPwN2FlXoIAZuTmMt+auOZYBc0NWEbPMr29QTkJxDFOUCQQDG0Z8QFUic3rulpqEN9WwCFt4rXokr2S7A4cAEHJllwMkFyslAW0a0qpF9tf26G0qUmAQ7YueHWqZTAmnywNu/AkAmzgeUoy4sZLU7+XaZLAE3Jv6LOi70pqBU2mVuiuOIE0NJc5t9vCpB/PXBgzUKNnatFfe80gpXcL3ywa9k1gKhAkA/ET2ox2eaQ1k46cuK9wAFBaYCEeHnY+Rd0P6tDzlluqrJyJLgdFPQeY7fVryerYuR6UrmX7BcElhSWqCrHZxXAkBNs14PKNTpPQ7DLrGP13JAsuc68GgZkERssQQyzumHQEorFt7noiLGkKNrKi4ewp9odJq2TZRRN5zFC/E/hP7v";
//    
    /*============================================================================*/
    /*============================================================================*/
    /*============================================================================*/
    
    //partner和seller获取失败,提示
    if ([partner length] == 0 || [seller length] == 0)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示"
                                                        message:@"缺少partner或者seller。"
                                                       delegate:self
                                              cancelButtonTitle:@"确定"
                                              otherButtonTitles:nil];
        [alert show];
        return;
    }
    
    /*
     *生成订单信息及签名
     */
    //将商品信息赋予AlixPayOrder的成员变量
    Order *order = [[Order alloc] init];
    order.partner = partner;
    order.seller = seller;
#pragma mark 这是订单号,订单号不可重复
    order.tradeNO = [self generateTradeNO]; //订单ID（由商家自行制定
#pragma mark 下面的是商品描述
    order.productName = @"测试"; //商品标题
    order.productDescription = @"好玩，哈哈哈~~·"; //商品描述
    order.amount = [NSString stringWithFormat:@"%.2f",0.01]; //商品价格
#pragma mark URL是回到你的程序的url
    order.notifyURL =  @"www.baidu.com"; //回调URL
#pragma mark 下面这些不用动
    order.service = @"mobile.securitypay.pay";
    order.paymentType = @"1";
    order.inputCharset = @"utf-8";
    order.itBPay = @"30m";
    order.showUrl = @"m.alipay.com";
    
    //应用注册scheme,在AlixPayDemo-Info.plist定义URL types
    NSString *appScheme = @"ZhouJianBingiOSTest";
    
    //将商品信息拼接成字符串
    NSString *orderSpec = [order description];
    NSLog(@"orderSpec = %@",orderSpec);
    
    //获取私钥并将商户信息签名,外部商户可以根据情况存放私钥和签名,只需要遵循RSA签名规范,并将签名字符串base64编码和UrlEncode
    id<DataSigner> signer = CreateRSADataSigner(privateKey);
    NSString *signedString = [signer signString:orderSpec];
    
    //将签名成功字符串格式化为订单字符串,请严格按照该格式
    NSString *orderString = nil;
    if (signedString != nil) {
        orderString = [NSString stringWithFormat:@"%@&sign=\"%@\"&sign_type=\"%@\"",
                       orderSpec, signedString, @"RSA"];
        
        [[AlipaySDK defaultService] payOrder:orderString fromScheme:appScheme callback:^(NSDictionary *resultDic) {
            NSLog(@"reslut = %@",resultDic);
        }];
    }
}

- (NSString *)generateTradeNO
{
    static int kNumber = 15;
    
    NSString *sourceStr = @"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    NSMutableString *resultStr = [[NSMutableString alloc] init];
    srand(time(0));
    for (int i = 0; i < kNumber; i++)
    {
        unsigned index = rand() % [sourceStr length];
        NSString *oneStr = [sourceStr substringWithRange:NSMakeRange(index, 1)];
        [resultStr appendString:oneStr];
    }
    return resultStr;
}


//分享
- (void)btnClick {
    [UMSocialData defaultData].extConfig.title = @"分享的title";
    [UMSocialData defaultData].extConfig.qqData.url = @"http://www.baidu.com";
    [UMSocialData defaultData].extConfig.qzoneData.url = @"http://www.baidu.com";
    [UMSocialData defaultData].extConfig.qzoneData.title = @"标哥技术博客";
    [UMSocialSnsService presentSnsIconSheetView:self
                                         appKey:UMappKey
                                      shareText:@"周建兵--iOS与JavaScript交互实战"
                                     shareImage:[UIImage imageNamed:@"a.png"]
                                shareToSnsNames:@[UMShareToWechatSession,UMShareToWechatTimeline,UMShareToQQ,UMShareToQzone]
                                       delegate:self];
}

-(void)didFinishGetUMSocialDataInViewController:(UMSocialResponseEntity *)response
{
    //根据`responseCode`得到发送结果,如果分享成功
    if(response.responseCode == UMSResponseCodeSuccess)
    {
        //得到分享到的平台名
        NSLog(@"share to sns name is %@",[[response.data allKeys] objectAtIndex:0]);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
