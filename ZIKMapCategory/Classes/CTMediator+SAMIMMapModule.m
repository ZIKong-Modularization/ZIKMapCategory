//
//  CTMediator+SAMIMMapModule.m
//  SAMIMMapModule_Category
//
//  Created by ZIKong on 2017/9/28.
//  Copyright © 2017年 youhuikeji. All rights reserved.
//

#import "CTMediator+SAMIMMapModule.h"

@implementation CTMediator (SAMIMMapModule)


- (UIViewController *)SAMIMMapModule_aViewControllerWithMapStyle:(MapStyle)mapStyle mapKey:(NSString *)mapKey oldLocationInfo:(NSDictionary *)oldLocationInfo confirmAction:(void(^)(NSDictionary *info))confirmAction
{
 
    NSMutableDictionary *paramsToSend = [[NSMutableDictionary alloc] init];
    paramsToSend[@"MapStyle"] = [NSNumber numberWithInteger:mapStyle];
    if (confirmAction) {
        paramsToSend[@"MapLocationBlock"] = confirmAction;
    }
    if(mapKey) {
        paramsToSend[@"MapKey"] = mapKey;
    }
    return [self performTarget:@"SAMIMMapModule" action:@"viewController" params:paramsToSend shouldCacheTarget:NO];
}
@end
