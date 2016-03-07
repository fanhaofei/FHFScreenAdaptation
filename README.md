#FHFScreenAdaptation
实例：
'UIButton *testBtn = [[UIButton alloc] initWithFrame:CGRectMakeEx(0, 100, 640, 300)];'

640为4.0寸的两倍像素点宽度；这句话的效果可以让testBtn占整个屏幕的宽度，高度根据300适配
注意：CGRectMakeEx(0, 100, 640, 300)里面的值全是实际值得两倍
你会发现这些值完全是设计图上面给出的值。不用你在苦逼的除以2.。。。。。。。
