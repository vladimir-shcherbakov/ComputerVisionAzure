//
//  AZViewController.h
//  ComputerVisionAzure
//
//  Created by vladimir-shcherbakov on 10/18/2018.
//  Copyright (c) 2018 vladimir-shcherbakov. All rights reserved.
//

@import UIKit;
#import "ComputerVisionAzure-umbrella.h"

@interface AZViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (readonly)id<ComputerVisionClientProtocol> service;
@end
