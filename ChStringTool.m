/*
 Created by Chelsea Huang on 2017/4/25.
 https://github.com/ch126
 */

#import "ChStringTool.h"

@implementation ChStringTool

#pragma mark - JSON應用
+(NSString*)getJSONStringWithJSONObject:(id)jsonObject{
    
    NSString *jsonString = @"";
    if ([NSJSONSerialization isValidJSONObject:jsonObject]) {
        NSData *data = [NSJSONSerialization dataWithJSONObject:jsonObject options:NSJSONWritingPrettyPrinted error:nil];
        jsonString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
        NSLog(@"JSON string:%@",jsonString);
    }
    return jsonString;
}


+(id)getJSONObjectWithJSONString:(NSString*)jsonString{
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    id jsonObject = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:nil];
    NSLog(@"JSON object:%@",jsonObject);

    return jsonObject;
}

#pragma mark - Attribute String
+(NSAttributedString*)getAttributedStringWithFullString:(NSString*)fullString AttribuesDic:(NSDictionary*)attributesDic{
    
    NSMutableAttributedString * string = [[NSMutableAttributedString alloc] initWithString:fullString];
    
    for (NSString * aWord in attributesDic) {
        id attributeValue = [attributesDic objectForKey:aWord];
        
        NSString * attributeName;
        if([attributeValue isKindOfClass:[UIColor class]]){
            attributeName = NSForegroundColorAttributeName;
        }else if ([attributeValue isKindOfClass:[UIFont class]]){
            attributeName = NSFontAttributeName;
        }
        NSRange subStringRange = [fullString rangeOfString:aWord];
        [string addAttribute:attributeName value:attributeValue range:subStringRange];
    }
    return [[NSAttributedString alloc] initWithAttributedString:string];
}

@end
