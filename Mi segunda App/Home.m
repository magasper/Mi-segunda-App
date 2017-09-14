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
//desoues de cargar la vista se va a esta funcion
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
    
    /*myCounter++;
    if (myCounter == 6) {
        myCounter = 0;
    }
    switch (myCounter) {
        case 1:
            self.lblWelcome.text = @"Primer click!";
            self.lblWelcome.textColor = [UIColor whiteColor];
            break;
        case 2:
            self.lblWelcome.text = @"Segundo click!";
            self.lblWelcome.textColor = [UIColor blackColor];
            break;
        case 3:
            self.lblWelcome.text = @"Tercero click!";
            self.lblWelcome.textColor = [UIColor redColor];
            break;
        case 4:
            self.lblWelcome.text = @"Cuarto click!";
            self.lblWelcome.textColor = [UIColor greenColor];
            break;
        case 5:
            self.lblWelcome.text = @"Quinto click!";
            self.lblWelcome.textColor = [UIColor redColor];
            myCounter = 0;
            break;
    }*/
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
