//
//  main.m
//  Sandbox
//
//  Created by Colin Dabritz on 8/11/11.
//  Copyright 2011 Colin Dabritz. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdlib.h>

int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // simple example of the 'guess' program
    // the program chooses a target number 1-100
    // the user enters integer guesses
    // the program gives feedback if the guess is low or high, until the user guesses right

    // initialize the setup, and choose first target
    int target = arc4random() % 100 + 1;
    int guess;
    
    printf("I choose a number between 1 and 100. Would you care to guess it?\n");

    // get guesses from the user and respond
    while(scanf("%d", &guess))
    {
        if(guess > target) // guess is high
        {
            printf("Too high. Guess again?\n");
        }
        else if(guess < target) // guess is low
        {
            printf("Too low. Guess again?\n");
        }
        else if(guess == target) // completed one game. Start another.
        {
            printf("Correct! I've chosen a new number bewteen 1 and 100. Would you care to guess it?\n");
            target = arc4random() % 100 + 1;
        }
    }

    [pool drain];
    return 0;
}

