//
//  ViewController.m
//  combinedImage
//
//  Created by Tyler on 15/11/10.
//  Copyright © 2015年 Tyler. All rights reserved.
//

#import "ViewController.h"

#define HexRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define HexRGBAlpha(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(a)]


@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIView *backView;
@property (weak, nonatomic) IBOutlet UIImageView *groupImage;
@property (weak, nonatomic) IBOutlet UIImageView *groupImage2;
@property (weak, nonatomic) IBOutlet UITextField *numberText;
@property (retain, nonatomic) UIImage *image1;
@property (retain, nonatomic) UIImage *image2;
@property (retain, nonatomic) UIImage *image3;
@property (retain, nonatomic) UIImage *image4;
@property (retain, nonatomic) UIImage *image5;
@property (retain, nonatomic) UIImage *image6;
@property (retain, nonatomic) UIImage *image7;
@property (retain, nonatomic) UIImage *image8;
@property (retain, nonatomic) UIImage *image9;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    _image1 = [UIImage imageNamed:@"1.jpg"];
    
    _image2 = [UIImage imageNamed:@"2.jpg"];
    
    _image3 = [UIImage imageNamed:@"3.jpg"];
    
    _image4 = [UIImage imageNamed:@"4.jpg"];
    
    _image5 = [UIImage imageNamed:@"5.jpg"];
    
    _image6 = [UIImage imageNamed:@"6.jpg"];

    _image7 = [UIImage imageNamed:@"7.jpg"];
    
    _image8 = [UIImage imageNamed:@"8.jpg"];
    
    _image9 = [UIImage imageNamed:@"9.jpg"];
    
    _numberText.delegate = self;
    
    //123
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(hideKeyboard)]];
    
    
}

- (void)hideKeyboard{
    [_numberText resignFirstResponder];
}


- (IBAction)showOriginImage:(id)sender {
    
    [_backView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    if (_numberText.text != nil) {
        NSInteger num = [_numberText.text integerValue];
        [_numberText resignFirstResponder];
        switch (num) {
            case 3:
            {
                UIImageView *imageV1 = [[UIImageView alloc]initWithFrame:CGRectMake(38.75, 5, 62.5, 62.5)];
                imageV1.image = _image1;
                
                UIImageView *imageV2 = [[UIImageView alloc]initWithFrame:CGRectMake(5, 72.5, 62.5, 62.5)];
                imageV2.image = _image2;
                
                UIImageView *imageV3 = [[UIImageView alloc]initWithFrame:CGRectMake(72.5, 72.5, 62.5, 62.5)];
                imageV3.image = _image3;
                [self.backView addSubview:imageV1];
                [self.backView addSubview:imageV2];
                [self.backView addSubview:imageV3];
            }
                break;
            case 4:
            {
                UIImageView *imageV1 = [[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 62.5, 62.5)];
                imageV1.image = _image1;
                
                UIImageView *imageV2 = [[UIImageView alloc]initWithFrame:CGRectMake(72.5, 5, 62.5, 62.5)];
                imageV2.image = _image2;
                
                UIImageView *imageV3 = [[UIImageView alloc]initWithFrame:CGRectMake(5, 72.5, 62.5, 62.5)];
                imageV3.image = _image3;
                
                UIImageView *imageV4 = [[UIImageView alloc]initWithFrame:CGRectMake(72.5, 72.5, 62.5, 62.5)];
                imageV4.image = _image4;
                
                [self.backView addSubview:imageV1];
                [self.backView addSubview:imageV2];
                [self.backView addSubview:imageV3];
                [self.backView addSubview:imageV4];
            }
                break;
            case 5:
            {
                UIImageView *imageV1 = [[UIImageView alloc]initWithFrame:CGRectMake(27.5 , 27.5, 40, 40)];
                imageV1.image = _image1;
                
                UIImageView *imageV2 = [[UIImageView alloc]initWithFrame:CGRectMake(72.5, 27.5, 40, 40)];
                imageV2.image = _image2;
                
                UIImageView *imageV3 = [[UIImageView alloc]initWithFrame:CGRectMake(5, 72.5, 40, 40)];
                imageV3.image = _image3;
                
                UIImageView *imageV4 = [[UIImageView alloc]initWithFrame:CGRectMake(50, 72.5, 40, 40)];
                imageV4.image = _image4;
                
                UIImageView *imageV5 = [[UIImageView alloc]initWithFrame:CGRectMake(95, 72.5, 40, 40)];
                imageV5.image = _image5;
                
                [self.backView addSubview:imageV1];
                [self.backView addSubview:imageV2];
                [self.backView addSubview:imageV3];
                [self.backView addSubview:imageV4];
                [self.backView addSubview:imageV5];
            }
                break;
            case 6:
            {
                UIImageView *imageV1 = [[UIImageView alloc]initWithFrame:CGRectMake(5, 27.5, 40, 40)];
                imageV1.image = _image1;
                
                UIImageView *imageV2 = [[UIImageView alloc]initWithFrame:CGRectMake(50, 27.5, 40, 40)];
                imageV2.image = _image2;
                
                UIImageView *imageV3 = [[UIImageView alloc]initWithFrame:CGRectMake(95, 27.5, 40, 40)];
                imageV3.image = _image3;
                
                UIImageView *imageV4 = [[UIImageView alloc]initWithFrame:CGRectMake(5, 72.5, 40, 40)];
                imageV4.image = _image4;
                
                UIImageView *imageV5 = [[UIImageView alloc]initWithFrame:CGRectMake(50, 72.5, 40, 40)];
                imageV5.image = _image5;
                
                UIImageView *imageV6 = [[UIImageView alloc]initWithFrame:CGRectMake(95, 72., 40, 40)];
                imageV6.image = _image6;
                
                [self.backView addSubview:imageV1];
                [self.backView addSubview:imageV2];
                [self.backView addSubview:imageV3];
                [self.backView addSubview:imageV4];
                [self.backView addSubview:imageV5];
                [self.backView addSubview:imageV6];
            }
                break;
            case 7:
            {
                UIImageView *imageV1 = [[UIImageView alloc]initWithFrame:CGRectMake(50, 5, 40, 40)];
                imageV1.image = _image1;
                
                UIImageView *imageV2 = [[UIImageView alloc]initWithFrame:CGRectMake(5, 50, 40, 40)];
                imageV2.image = _image2;
                
                UIImageView *imageV3 = [[UIImageView alloc]initWithFrame:CGRectMake(50, 50, 40, 40)];
                imageV3.image = _image3;
                
                UIImageView *imageV4 = [[UIImageView alloc]initWithFrame:CGRectMake(95, 50, 40, 40)];
                imageV4.image = _image4;
                
                UIImageView *imageV5 = [[UIImageView alloc]initWithFrame:CGRectMake(5, 95, 40, 40)];
                imageV5.image = _image5;
                
                UIImageView *imageV6 = [[UIImageView alloc]initWithFrame:CGRectMake(50, 95, 40, 40)];
                imageV6.image = _image6;
                
                UIImageView *imageV7 = [[UIImageView alloc]initWithFrame:CGRectMake(95, 95, 40, 40)];
                imageV7.image = _image7;
                
                [self.backView addSubview:imageV1];
                [self.backView addSubview:imageV2];
                [self.backView addSubview:imageV3];
                [self.backView addSubview:imageV4];
                [self.backView addSubview:imageV5];
                [self.backView addSubview:imageV6];
                [self.backView addSubview:imageV7];
            }
                break;
            case 8:
            {
                UIImageView *imageV1 = [[UIImageView alloc]initWithFrame:CGRectMake(27.5, 5, 40, 40)];
                imageV1.image = _image1;
                
                UIImageView *imageV2 = [[UIImageView alloc]initWithFrame:CGRectMake(72.5, 5, 40, 40)];
                imageV2.image = _image2;
                
                UIImageView *imageV3 = [[UIImageView alloc]initWithFrame:CGRectMake(5, 50, 40, 40)];
                imageV3.image = _image3;
                
                UIImageView *imageV4 = [[UIImageView alloc]initWithFrame:CGRectMake(50, 50, 40, 40)];
                imageV4.image = _image4;
                
                UIImageView *imageV5 = [[UIImageView alloc]initWithFrame:CGRectMake(95, 50, 40, 40)];
                imageV5.image = _image5;
                
                UIImageView *imageV6 = [[UIImageView alloc]initWithFrame:CGRectMake(5, 95, 40, 40)];
                imageV6.image = _image6;
                
                UIImageView *imageV7 = [[UIImageView alloc]initWithFrame:CGRectMake(50, 95, 40, 40)];
                imageV7.image = _image7;
                
                UIImageView *imageV8 = [[UIImageView alloc]initWithFrame:CGRectMake(95, 95, 40, 40)];
                imageV8.image = _image8;
                
                [self.backView addSubview:imageV1];
                [self.backView addSubview:imageV2];
                [self.backView addSubview:imageV3];
                [self.backView addSubview:imageV4];
                [self.backView addSubview:imageV5];
                [self.backView addSubview:imageV6];
                [self.backView addSubview:imageV7];
                [self.backView addSubview:imageV8];
            }
                break;
            case 9:
            {
                UIImageView *imageV1 = [[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 40, 40)];
                imageV1.image = _image1;
                
                UIImageView *imageV2 = [[UIImageView alloc]initWithFrame:CGRectMake(50, 5, 40, 40)];
                imageV2.image = _image2;
                
                UIImageView *imageV3 = [[UIImageView alloc]initWithFrame:CGRectMake(95, 5, 40, 40)];
                imageV3.image = _image3;
                
                UIImageView *imageV4 = [[UIImageView alloc]initWithFrame:CGRectMake(5, 50, 40, 40)];
                imageV4.image = _image4;
                
                UIImageView *imageV5 = [[UIImageView alloc]initWithFrame:CGRectMake(50, 50, 40, 40)];
                imageV5.image = _image5;
                
                UIImageView *imageV6 = [[UIImageView alloc]initWithFrame:CGRectMake(95, 50, 40, 40)];
                imageV6.image = _image6;
                
                UIImageView *imageV7 = [[UIImageView alloc]initWithFrame:CGRectMake(5, 95, 40, 40)];
                imageV7.image = _image7;
                
                UIImageView *imageV8 = [[UIImageView alloc]initWithFrame:CGRectMake(50, 95, 40, 40)];
                imageV8.image = _image8;
                
                UIImageView *imageV9 = [[UIImageView alloc]initWithFrame:CGRectMake(95, 95, 40, 40)];
                imageV9.image = _image9;
                
                [self.backView addSubview:imageV1];
                [self.backView addSubview:imageV2];
                [self.backView addSubview:imageV3];
                [self.backView addSubview:imageV4];
                [self.backView addSubview:imageV5];
                [self.backView addSubview:imageV6];
                [self.backView addSubview:imageV7];
                [self.backView addSubview:imageV8];
                [self.backView addSubview:imageV9];
            }
                break;
                
            default:
                break;
        }
    }
    
}

- (IBAction)creatGroupImage:(id)sender {
    
    [_groupImage.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [_groupImage2.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(280 , 280), YES, 0);
     [[self.backView layer] renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    CGImageRef imageRef = viewImage.CGImage;
    
    CGRect rect = CGRectMake(0, 0, 280, 280);//这里可以设置想要截图的区域
    CGImageRef imageRefRect =CGImageCreateWithImageInRect(imageRef, rect);
    
    UIImage *sendImage = [[UIImage alloc] initWithCGImage:imageRefRect];
    
    self.groupImage.image = sendImage;
    self.groupImage2.image = sendImage;
    
}

#pragma mark == textFieldDelegate ==
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
