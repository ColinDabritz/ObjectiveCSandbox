//
//  main.m
//  Sandbox
//
//  Created by Colin Dabritz on 8/11/11.
//  Copyright 2011 Colin Dabritz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSLog(@"Hello, World!");

    [pool drain];
    return 0;
}

