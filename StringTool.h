//
//  StringTool.h
//  what
//
//  Created by chelsea on 2017/4/19.
//  Copyright © 2017年 ixensor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface StringTool : NSObject

#pragma mark - JSON應用
+(NSString*)getJSONStringWithJSONObject:(id)jsonObject;
+(id)getJSONObjectWithJSONString:(NSString*)jsonString;

#pragma mark - Attribute String
//attributesDic is an NSDictionary of NSString:UIColor/UIFont pairs
+(NSAttributedString*)getAttributedStringWithFullString:(NSString*)fullString AttribuesDic:(NSDictionary*)attributesDic;
@end
