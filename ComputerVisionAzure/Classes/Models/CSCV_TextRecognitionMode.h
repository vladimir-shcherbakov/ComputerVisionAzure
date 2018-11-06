/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
 */

#import <AzureClientRuntime/AzureClientRuntime.h>

/**
 * Defines values for CSCV_TextRecognitionMode.
 */
@interface CSCV_TextRecognitionMode : NSObject <AZStringEnum>
+ (NSArray*)values;
+ (NSString *)toStringValue:(CSCV_TextRecognitionMode *)value;
@property (class, readonly) CSCV_TextRecognitionMode *HANDWRITTEN;
@property (class, readonly) CSCV_TextRecognitionMode *PRINTED;
@end
