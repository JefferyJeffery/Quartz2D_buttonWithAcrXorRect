//
//  testVIew.m
//  testtest
//
//  Created by Jeffery on 2015/6/16.
//  Copyright (c) 2015年 RinseIO. All rights reserved.
//

#import "testVIew.h"

@implementation testVIew

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //pic1
    CGRect _rect1 = CGRectMake(20, 20, 100, 50);
    CGFloat Width = CGRectGetWidth(_rect1);
    CGFloat Height = CGRectGetHeight(_rect1);
    
    //設置填充顏色
    {
        CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
        CGContextAddRect(context, CGRectMake(CGRectGetMinX(_rect1) , CGRectGetMinY(_rect1), Width * 0.90 , Height));
        CGContextDrawPath(context, kCGPathFill);
    }
    
    CGRect _rectText = CGRectMake(CGRectGetMidX(_rect1) , CGRectGetMaxY(_rect1) + 10 , Width , 20);
    [[NSString stringWithFormat:@"+"] drawInRect:_rectText withAttributes:nil];

    //pic2
    CGRect _rect2 = CGRectMake(CGRectGetMinX(_rect1) , CGRectGetMaxY(_rectText) + 10 , Width , Height);
    {
        CGFloat radius = CGRectGetHeight(_rect2) / 2;
        CGFloat minx = CGRectGetMinX(_rect2), midx = CGRectGetMidX(_rect2), maxx = CGRectGetMaxX(_rect2);
        CGFloat miny = CGRectGetMinY(_rect2), midy = CGRectGetMidY(_rect2), maxy = CGRectGetMaxY(_rect2);
        //1
        //設置填充顏色
        CGContextSetFillColorWithColor(context, [UIColor yellowColor].CGColor);
        // Start at 1
        CGContextAddRect(context,_rect2);
        CGContextMoveToPoint(context, minx, midy);
        // Add an arc through 2 to 3
        CGContextAddArcToPoint(context, minx, miny, midx, miny, radius);
        // Add an arc through 4 to 5
        CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radius);
        // Add an arc through 6 to 7
        CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
        // Add an arc through 8 to 9
        CGContextAddArcToPoint(context, minx, maxy, minx, midy, radius);
        // Close the path
        CGContextClosePath(context);
        // Fill & stroke the path
        CGContextDrawPath(context, kCGPathEOFill);
        

    }
    
    _rectText = CGRectMake(CGRectGetMidX(_rect1) , CGRectGetMaxY(_rect2) + 10 , Width , 20);
    [[NSString stringWithFormat:@"+"] drawInRect:_rectText withAttributes:nil];
    
    //pic3
    _rect2 = CGRectMake(CGRectGetMinX(_rect1) , CGRectGetMaxY(_rectText) + 10 , Width , Height);
    {
        CGFloat radius = CGRectGetHeight(_rect2) / 2;
        CGFloat minx = CGRectGetMinX(_rect2), midx = CGRectGetMidX(_rect2), maxx = CGRectGetMaxX(_rect2);
        CGFloat miny = CGRectGetMinY(_rect2), midy = CGRectGetMidY(_rect2), maxy = CGRectGetMaxY(_rect2);
        
        //設置邊框(Stroke)寬度
        CGContextSetLineWidth(context, 1.5);
        //設置邊框(Stroke)顏色
        CGContextSetStrokeColorWithColor(context, [[UIColor grayColor] colorWithAlphaComponent:0.5].CGColor);
        
        CGContextBeginPath(context);
        // Start at 1
        CGContextMoveToPoint(context, minx, midy);
        // Add an arc through 2 to 3
        CGContextAddArcToPoint(context, minx, miny, midx, miny, radius);
        // Add an arc through 4 to 5
        CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radius);
        // Add an arc through 6 to 7
        CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
        // Add an arc through 8 to 9
        CGContextAddArcToPoint(context, minx, maxy, minx, midy, radius);
        // Close the path
        CGContextClosePath(context);
        // Fill & stroke the path
        CGContextDrawPath(context, kCGPathStroke);
    }
    
    _rectText = CGRectMake(CGRectGetMidX(_rect1) , CGRectGetMaxY(_rect2) + 10 , Width , 20);
    [[NSString stringWithFormat:@"="] drawInRect:_rectText withAttributes:nil];
    
    //pic3
    CGRect _rect = CGRectMake(CGRectGetMinX(_rect1) , CGRectGetMaxY(_rectText) + 10 , Width , Height);
    
    CGFloat radius = CGRectGetHeight(_rect) / 2;
    CGFloat minx = CGRectGetMinX(_rect), midx = CGRectGetMidX(_rect), maxx = CGRectGetMaxX(_rect);
    CGFloat miny = CGRectGetMinY(_rect), midy = CGRectGetMidY(_rect), maxy = CGRectGetMaxY(_rect);

    //設置填充顏色
    {
        CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
        CGContextAddRect(context, CGRectMake(CGRectGetMinX(_rect) , CGRectGetMinY(_rect),
                                             CGRectGetWidth(_rect) * 0.90 , CGRectGetHeight(_rect)));
        CGContextDrawPath(context, kCGPathFill);
    }
    {
        //設置填充顏色
        CGContextSetFillColorWithColor(context, [UIColor yellowColor].CGColor);
        // Start at 1
        CGContextAddRect(context,_rect);
        CGContextMoveToPoint(context, minx, midy);
        // Add an arc through 2 to 3
        CGContextAddArcToPoint(context, minx, miny, midx, miny, radius);
        // Add an arc through 4 to 5
        CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radius);
        // Add an arc through 6 to 7
        CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
        // Add an arc through 8 to 9
        CGContextAddArcToPoint(context, minx, maxy, minx, midy, radius);
        // Close the path
        CGContextClosePath(context);
        // Fill & stroke the path
        CGContextDrawPath(context, kCGPathEOFill);
    }
    {
        //設置邊框(Stroke)寬度
        CGContextSetLineWidth(context, 1.5);
        //設置邊框(Stroke)顏色
        CGContextSetStrokeColorWithColor(context, [[UIColor grayColor] colorWithAlphaComponent:0.5].CGColor);
        
        CGContextBeginPath(context);
        // Start at 1
        CGContextMoveToPoint(context, minx, midy);
        // Add an arc through 2 to 3
        CGContextAddArcToPoint(context, minx, miny, midx, miny, radius);
        // Add an arc through 4 to 5
        CGContextAddArcToPoint(context, maxx, miny, maxx, midy, radius);
        // Add an arc through 6 to 7
        CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
        // Add an arc through 8 to 9
        CGContextAddArcToPoint(context, minx, maxy, minx, midy, radius);
        // Close the path
        CGContextClosePath(context);
        // Fill & stroke the path
        CGContextDrawPath(context, kCGPathStroke);
    }
}


@end
