/*
 Created by Chelsea Huang on 2017/4/25.
 https://github.com/ch126
 */


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ChStringTool : NSObject

#pragma mark - JSON應用
+(NSString*)getJSONStringWithJSONObject:(id)jsonObject;
+(id)getJSONObjectWithJSONString:(NSString*)jsonString;

#pragma mark - Attribute String
//attributesDic is an NSDictionary of NSString:UIColor/UIFont pairs
+(NSAttributedString*)getAttributedStringWithFullString:(NSString*)fullString AttribuesDic:(NSDictionary*)attributesDic;
@end
