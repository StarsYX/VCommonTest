//
//  HCTAlertController.m
//  heChangTong_iphone
//
//  Created by Vstar on 2019/11/25.
//  Copyright © 2019 ChinaMobile. All rights reserved.
//

#import "HCTAlertController.h"

@interface HCTAlertController ()

@end

@implementation HCTAlertController
- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles preferredStyle:(UIAlertControllerStyle)type cancelButtonClicked:(cancelButtonClicked)cancelButtonClicked otherButtonClicked:(otherButtonClicked)otherButtonClicked {
    if (self = [super init]) {
        
        self = (HCTAlertController *)[UIAlertController alertControllerWithTitle:title message:message preferredStyle:type];
        
        if (message) {
            //修改标题的内容，字号，颜色。title使用的key值是“attributedTitle” message的key值为attributedMessage
            NSMutableAttributedString *messageAttri = [[NSMutableAttributedString alloc] initWithString:message];
            [messageAttri addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:15] range:NSMakeRange(0, [[messageAttri string] length])];
            [messageAttri addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(0, [[messageAttri string] length])];
            [self setValue:messageAttri forKey:@"attributedMessage"];
        }
        
        //1.添加取消按钮
        if (cancelButtonTitle) {
            UIAlertAction *action = [UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
                NSLog(@"取消");
                cancelButtonClicked();
            }];
            [self addAction:action];
        }
        
        //2,添加其他按钮
        if (otherButtonTitles.count > 0) {
            for (NSInteger i = 0; i < otherButtonTitles.count; i++) {
                [self addAction:({
                    UIAlertAction *action = [UIAlertAction actionWithTitle:otherButtonTitles[i] style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                        NSLog(@"%@",otherButtonTitles[i]);
                        otherButtonClicked(i);
                    }];
                    action;
                })];
            }
        }
        
    }
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}



@end
