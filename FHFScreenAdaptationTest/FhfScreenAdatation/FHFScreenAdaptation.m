

#import "FHFScreenAdaptation.h"

@implementation FHFScreenAdaptation

static double autoSizeScaleX;
static double autoSizeScaleY;

// 此方法程序运行时就会调用
+ (void)load {
    // 获取屏幕大小
    
    
    CGSize size = [[UIScreen mainScreen] bounds].size;
    NSLog(@"%f",  size.width);
    autoSizeScaleX = (size.width  / 320.0) * 0.5;
    autoSizeScaleY = (size.height / 568.0) * 0.5;
    if (size.width > 414) {
        autoSizeScaleX = 0.5;
        autoSizeScaleY = 0.5;
    }
  
}



CGRect CGRectMakeEx(CGFloat x, CGFloat y, CGFloat width, CGFloat height) {
    CGRect rect;
    rect.origin.x = x * autoSizeScaleX ;
    rect.origin.y = y * autoSizeScaleY;
    rect.size.width = width * autoSizeScaleX;
    rect.size.height = height * autoSizeScaleY;
    return rect;
}

CGSize CGSizeMakeEx(CGFloat width, CGFloat height) {
    CGSize size;
    size.width = autoSizeScaleX * width;
    size.height = autoSizeScaleY * height;
    return size;
}

CGPoint CGPointMakeEx(CGFloat x, CGFloat y) {
    CGPoint point;
    point.x = autoSizeScaleX * x;
    point.y = autoSizeScaleY * y;
    return point;
}

// 适配高度
double heightEx(double height) {
    return height * autoSizeScaleY;
}

// 适配宽度
double widthEx(double width) {
    return width * autoSizeScaleX;
}

int fontEx(int font){
    //默认是以iPhone5来适配的
    CGFloat h = [[UIScreen mainScreen] bounds].size.height;
    CGFloat w = [[UIScreen mainScreen] bounds].size.width;
    if (h == 667) {
        font = font + 1;
    }else{
        if (h == 568&& w == 320) {
            
        }else{
            if (h == 480) {
                font = font - 1;
            }else {
                if (h == 736.000000) {
                    font = font + 2;
                }
            }
        }
    }
    
    return font;
}

+ (UIFont *)fontEx:(int)font
{
    
    return [UIFont systemFontOfSize:fontEx(font)];
    
}

@end
