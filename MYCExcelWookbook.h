//
//  MYCExcelWookbook.h
//  
//
//  Created by 马雨辰 on 2018/10/24.
//  Copyright © 2018年 马雨辰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MYCExcelCell.h"
#import "MYCExcelSheet.h"
NS_ASSUME_NONNULL_BEGIN

@interface MYCExcelWookbook : NSObject

@property(nonatomic,copy)NSString *wookbookName;//工作簿名

@property(nonatomic,strong)NSMutableArray <MYCExcelSheet *>*sheetArray;//工作表数组

/**
 初始化工作簿

 @param pathUrl 文件路径url
 @return 解析好的工作簿模型
 */
-(instancetype)initWithExcelFilePathUrl:(NSURL *)pathUrl;



/**
 根据工作表名获取工作表

 @param sheetName 工作表名
 @return 工作表
 */
-(MYCExcelSheet *)getSheetWithSheetName:(NSString *)sheetName;


@end

NS_ASSUME_NONNULL_END
