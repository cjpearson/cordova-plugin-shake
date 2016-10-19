
#import "CDVViewController+MotionEvents.h"
#import <Cordova/CDV.h>
#import <objc/runtime.h>

@implementation CDVViewController (MotionEvents)

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSInvocation* invocation = [NSInvocation invocationWithMethodSignature:[self methodSignatureForSelector:_cmd]];
    invocation.selector = _cmd;
    [invocation setArgument:&event atIndex:2];
    NSEnumerator* pluginEnumerator = [self.pluginObjects objectEnumerator];
    for (CDVPlugin* plugin in pluginEnumerator) {
        if ([plugin respondsToSelector:_cmd]) {
            [invocation invokeWithTarget:plugin];
        }
    }
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSInvocation* invocation = [NSInvocation invocationWithMethodSignature:[self methodSignatureForSelector:_cmd]];
    invocation.selector = _cmd;
    [invocation setArgument:&event atIndex:2];
    NSEnumerator* pluginEnumerator = [self.pluginObjects objectEnumerator];
    for (CDVPlugin* plugin in pluginEnumerator) {
        if ([plugin respondsToSelector:_cmd]) {
            [invocation invokeWithTarget:plugin];
        }
    }
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSInvocation* invocation = [NSInvocation invocationWithMethodSignature:[self methodSignatureForSelector:_cmd]];
    invocation.selector = _cmd;
    [invocation setArgument:&event atIndex:2];
    NSEnumerator* pluginEnumerator = [self.pluginObjects objectEnumerator];
    for (CDVPlugin* plugin in pluginEnumerator) {
        if ([plugin respondsToSelector:_cmd]) {
            [invocation invokeWithTarget:plugin];
        }
    }
}

@end
