# StringTool
JSON String and attribute string tool

```Objective-C

#pragma mark - Attribute String
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 300, 100)];
    
    NSString * fullString = @"I am ch126.";
    NSDictionary * attributeDic = @{@"I":[UIFont systemFontOfSize:10],
                                    @"am":[UIFont systemFontOfSize:50],
                                    @"ch126":[UIColor orangeColor]};
    
    NSAttributedString * aString = [StringTool getAttributedStringWithFullString:fullString AttribuesDic:attributeDic];
    
    label.attributedText = aString;
    
    [self.view addSubview:label];
    
    
#pragma mark - JSON String
    NSDictionary * obj = @{@"Name":@"ch126",
                           @"Birthday":@"0126",
                           @"Country":@"Taiwan"};

    
    NSString * jsonString = [StringTool getJSONStringWithJSONObject:obj];
    /*
     log:
     
     JSON string:{
        "Birthday" : "0126",
        "Name" : "ch126",
        "Country" : "Taiwan"
     }
   */
    
    NSDictionary * jsonDic = (NSDictionary *)[StringTool getJSONObjectWithJSONString:jsonString];
    /*
     log:
     
     JSON object:{
     Birthday = 0126;
     Country = Taiwan;
     Name = ch126;
     }
     */
    
    ```




