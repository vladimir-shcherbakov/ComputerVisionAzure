//
//  AZViewController.m
//  ComputerVisionAzure
//
//  Created by vladimir-shcherbakov on 10/18/2018.
//  Copyright (c) 2018 vladimir-shcherbakov. All rights reserved.
//

#import "AZViewController.h"


@interface AZViewController ()
@property (weak, nonatomic) IBOutlet UIButton *cameraBtn;
@property (weak, nonatomic) IBOutlet UIButton *libraryBtn;
@property (weak, nonatomic) IBOutlet UIButton *TextRecognitionBtn;
@property (weak, nonatomic) IBOutlet UIButton *imageRecognitionBtn;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextView *textView;

- (IBAction)onCameraBtn:(UIButton *)sender;
- (IBAction)onLibraryBtn:(UIButton *)sender;
- (IBAction)onTextRecognitionBtn:(UIButton *)sender;
- (IBAction)onImageRecognitionBtn:(id)sender;

-(void)showAlert:(NSString*)message title:(NSString*)title;

@end

@implementation AZViewController

-(void)showAlert:(NSString*)message title:(NSString*)title {
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:title
                                 message:message
                                 preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* okButton = [UIAlertAction
                                actionWithTitle:@"Ok"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //Handle your Ok button action here
                                }];
    [alert addAction:okButton];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString* endpoing = @"westus2.api.cognitive.microsoft.com";
    NSString* key = [[NSProcessInfo processInfo] environment][@"SUBSCRIPTION_KEY"];
    if (!key) {
        key = @"UNDEFINED";
    }
    _service = [CSCV_ComputerVisionClientService createWithEndpoint:endpoing
                                                withSubscriptionKey:key];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    [self showAlert:@"Memory Warning Received" title:@"Warning"];
}

- (IBAction)onCameraBtn:(UIButton *)sender {
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        [self showAlert:@"Device has no camera" title:@"Error"];
        return;
    }
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentViewController:picker animated:YES completion:NULL];
}

- (IBAction)onLibraryBtn:(UIButton *)sender {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:picker animated:YES completion:NULL];
}

- (IBAction)onImageRecognitionBtn:(UIButton *)sender {
    if (!self.imageView.image) {
        [self showAlert:@"Use Camera or Library to add image" title:@"Error"];
        return;
    }
    [self->_textView setText:@"Working..."];
    NSData *imageData = UIImagePNGRepresentation(self.imageView.image);
    
    [self.service describeImageInStreamWithImage:imageData
                                    withCallback:^(CSCV_ImageDescription *imageDescription, AZOperationError *error) {
                                        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                                            [self->_textView setText:@""];
                                            if (error) {
                                                [self->_textView insertText:[NSString stringWithFormat:@"Error: %@\n", error.reason]];
                                                return;
                                            }
                                            if (imageDescription.tags.count == 0) {
                                                [self->_textView setText:@"==== No tags found.\n"];
                                            } else {
                                                [self->_textView insertText:[NSString stringWithFormat:@"==== Tags\n"]];
                                                for (NSString* tag in imageDescription.tags) {
                                                    [self->_textView insertText:[NSString stringWithFormat:@"%@ ", tag]];
                                                }
                                                [self->_textView insertText:[NSString stringWithFormat:@"\n"]];
                                            }
                                            if (imageDescription.captions.count == 0) {
                                                [self->_textView insertText:@"--"];
                                            } else {
                                                [self->_textView insertText:[NSString stringWithFormat:@"\n==== Captions\n"]];
                                                for (CSCV_ImageCaption* caption in imageDescription.captions) {
                                                    [self->_textView insertText:[NSString stringWithFormat:@"%@(%@) ", caption.text, caption.confidence]];
                                                }
                                            }
                                            
                                        }];
        
                                    }];
}

- (IBAction)onTextRecognitionBtn:(UIButton *)sender {
    if (!self.imageView.image) {
        [self showAlert:@"Use Camera or Library to add image" title:@"Error"];
        return;
    }
    [self->_textView setText:@"Working..."];
    NSData *imageData = UIImagePNGRepresentation(self.imageView.image);
    [self.service recognizePrintedTextInStreamWithDetectOrientation:AZ_YES
                                                          withImage:imageData
                                                       withCallback:^(CSCV_OcrResult * result, AZOperationError *error) {
                                                           [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                                                               [self->_textView setText:@""];
                                                               if (error) {
                                                                   [self->_textView insertText:[NSString stringWithFormat:@"Error: %@\n", error.reason]];
                                                                   return;
                                                               }
                                                               if (result.regions.count == 0) {
                                                                   [self->_textView setText:@"No text found."];
                                                                   return;
                                                               }
                                                               for (CSCV_OcrRegion* region in result.regions) {
                                                                   for (CSCV_OcrLine* line in region.lines) {
                                                                       for (CSCV_OcrWord* word in line.words) {
                                                                           [self->_textView insertText:[NSString stringWithFormat:@"%@\n", word.text]];
                                                                       }
                                                                   }
                                                               }
                                                           }];
    }];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.imageView.image = chosenImage;
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

@end
