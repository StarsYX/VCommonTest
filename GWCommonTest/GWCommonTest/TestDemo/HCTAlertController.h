//
//  HCTAlertController.h
//  heChangTong_iphone
//
//
//  Created by Vstar on 2019/11/25.
//  Copyright © 2019 ChinaMobile. All rights reserved.
//
//

#import <UIKit/UIKit.h>

/** 取消 */
typedef void(^cancelButtonClicked)(void);
/** 其他按钮 */
typedef void(^otherButtonClicked)(NSInteger index);

@interface HCTAlertController : UIAlertController

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles preferredStyle:(UIAlertControllerStyle)type cancelButtonClicked:(cancelButtonClicked)cancelButtonClicked otherButtonClicked:(otherButtonClicked)otherButtonClicked;
@end
