//
//  ViewController.m
//  Metal_Demo_Triangle
//
//  Created by tlab on 2020/8/24.
//  Copyright © 2020 yuanfangzhuye. All rights reserved.
//

#import "ViewController.h"
//导入MetalKit 工具类
@import MetalKit;
#import "LcRender.h"

@interface ViewController () {
    MTKView *_view;
    LcRender *_render;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _view = (MTKView *)self.view;
    _view.device = MTLCreateSystemDefaultDevice();
    
    if (!_view.device) {
        NSLog(@"Metal is not supported on this device");
        return;
    }
    
    _render = [[LcRender alloc] initWithMetalKitView:_view];
    if (!_render) {
        NSLog(@"Renderer failed initialization");
        return;
    }
    
    [_render mtkView:_view drawableSizeWillChange:_view.drawableSize];
    _view.delegate = _render;
}


@end
