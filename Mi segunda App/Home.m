//
//  ViewController.m
//  Mi segunda App
//
//  Created by pegasus on 13/09/17.
//  Copyright © 2017 pegasus. All rights reserved.
//

#import "Home.h"

@interface Home ()

@end

@implementation Home


static NSArray *_myColorArray = nil;
static NSArray *_value = nil;

int value =0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)changeButtonPressed:(id)sender {
   
    
    _value = [NSArray arrayWithObjects:@"clic1", @"clic2", @"clic3", @"clic4", @"clic5", nil];
    _myColorArray = [[NSArray alloc] initWithObjects: [UIColor redColor], [UIColor blueColor], [UIColor purpleColor],
                     [UIColor greenColor],[UIColor blackColor], nil];
    
    if (value == [_value count]) {
        value =0;
    }
    
    self.lblWelcome.text = [_value objectAtIndex:value];
    self.lblWelcome.textColor = [_myColorArray objectAtIndex:value];
    value ++;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
