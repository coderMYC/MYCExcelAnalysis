//
//  MYCExcelCell.m
//  
//
//  Created by 马雨辰 on 2018/10/19.
//  Copyright © 2018年 马雨辰. All rights reserved.
//

#import "MYCExcelCell.h"

@interface MYCExcelCell()



@end

@implementation MYCExcelCell

-(void)setCellDic:(NSDictionary *)cellDic
{
    _cellDic = cellDic;
    
    [self refreshData];
    
}


-(void)setMergeCellColumAndRowStr:(NSString *)mergeCellColumAndRowStr
{
    _mergeCellColumAndRowStr = mergeCellColumAndRowStr;
    
    if(mergeCellColumAndRowStr && [mergeCellColumAndRowStr isKindOfClass:[NSString class]] &&mergeCellColumAndRowStr.length > 0)
    {
        self.cellIsMerge = YES;
        
        NSString *rowStr = [MYCExcelCell getNumberFromStr:mergeCellColumAndRowStr];
        
        self.mergeRow = [rowStr integerValue];
        
        NSString *column = [MYCExcelCell getLetterFromStr:mergeCellColumAndRowStr];
        
        self.mergeColumn = column;
    }
}


-(void)refreshData
{
    NSDictionary *v = [self.cellDic objectForKey:@"v"];
    
    //解析下标
    if(v && [v isKindOfClass:[NSDictionary class]])
    {
        self.stringValueIndex = [[v objectForKey:@"text"] integerValue];
        
        self.indexAnalysisSuccess = YES;
    }
    
    NSString *r = [self.cellDic objectForKey:@"r"];
    
    NSString *rowStr = [MYCExcelCell getNumberFromStr:r];
    
    self.row = [rowStr integerValue];
    
    NSString *column = [MYCExcelCell getLetterFromStr:r];
    
    self.column = column;
}


-(void)setStringValue:(NSString *)stringValue
{
    if(self.indexAnalysisSuccess)
    {
        _stringValue = stringValue;
    }
}


/**
 获取字符串内数字
 */
+(NSString *)getNumberFromStr:(NSString *)str
{
    NSCharacterSet *nonDigitCharacterSet = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    return[[str componentsSeparatedByCharactersInSet:nonDigitCharacterSet] componentsJoinedByString:@""];
}



/**
 获取字符串内字母
 */
+(NSString *)getLetterFromStr:(NSString *)str
{
    NSString *numStr = [self getNumberFromStr:str];
    
    NSString *letterStr = [str substringWithRange:NSMakeRange(0, str.length - numStr.length)];
    
    return letterStr;
    
}


@end
