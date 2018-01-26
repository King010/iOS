//
//  TestView.m
//  ThreePoints
//
//  Created by renren-mac on 2017/12/27.
//  Copyright © 2017年 renren-mac. All rights reserved.
//

#import "TestView.h"

@implementation TestView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if(self){
        self.backgroundColor=[UIColor whiteColor];
        pointArray=[[NSMutableArray alloc]initWithCapacity:3];
        UILabel* label=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
        label.text=@"单机三点确定一个三角形";
        [self addSubview:label];
    }
    return self;
}

-(void)drawRect:(CGRect)rect
{
    CGContextRef context=UIGraphicsGetCurrentContext();
    CGContextSetRGBStrokeColor(context, 0.5, 0.5, 0.5, 1.0);
    CGContextSetLineWidth(context, 2.0);
    CGPoint addLines[]=
    {
        firstPoint,secnondPoint,thirdPoint,firstPoint
    };
    CGContextAddLines(context, addLines, sizeof(addLines)/sizeof(addLines[0]));
    CGContextStrokePath(context);
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch * touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    [pointArray addObject:[NSValue valueWithCGPoint:point]];
    if (pointArray.count > 3) {
        [pointArray removeObjectAtIndex:0];
    }
    if (pointArray.count==3) {
        firstPoint = [[pointArray objectAtIndex:0]CGPointValue];
        secnondPoint = [[pointArray objectAtIndex:1]CGPointValue];
        thirdPoint = [[pointArray objectAtIndex:2]CGPointValue];
    }
    NSLog(@"%@",[NSString stringWithFormat:@"1:%f/%f\n2:%f/%f\n3:%f/%f",firstPoint.x,firstPoint.y,secnondPoint.x,secnondPoint.y,thirdPoint.x,thirdPoint.y]);
    [self setNeedsDisplay];
}

@end
