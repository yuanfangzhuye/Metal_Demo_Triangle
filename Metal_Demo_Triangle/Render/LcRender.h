//
//  LcRender.h
//  Metal_Demo_Triangle
//
//  Created by tlab on 2020/8/24.
//  Copyright © 2020 yuanfangzhuye. All rights reserved.
//

#import <Foundation/Foundation.h>

//导入MetalKit工具包
@import MetalKit;

//这是一个独立于平台的渲染类
//MTKViewDelegate协议:允许对象呈现在视图中并响应调整大小事件
@interface LcRender : NSObject<MTKViewDelegate>

//初始化一个MTKView
- (instancetype)initWithMetalKitView:(MTKView *)mtkView;

@end
