//
//  ViewController.m
//  BattleHackBeacon
//
//  Created by Tse-Chi Wang on 5/31/2014.
//  Copyright (c) 2014 Jeremy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSUUID *proximityUUID = [[NSUUID alloc]
                             initWithUUIDString:@"2018631D-734B-4BD4-984F-1BD2A2FC5ADB"];
    
    // Create the beacon region.
    CLBeaconRegion *beaconRegion = [[CLBeaconRegion alloc]
                                    initWithProximityUUID:proximityUUID
                                    identifier:@"com.mycompany.myregion"];
    
    // Create a dictionary of advertisement data.
    NSDictionary *beaconPeripheralData =
    [beaconRegion peripheralDataWithMeasuredPower:nil];
    
    // Create the peripheral manager.
    CBPeripheralManager *peripheralManager = [[CBPeripheralManager alloc]
                                              initWithDelegate:selfqueue:nil options:nil];
    
    // Start advertising your beacon's data.
    [peripheralManager startAdvertising:beaconPeripheralData];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
