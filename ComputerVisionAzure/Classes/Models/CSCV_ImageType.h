/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime-umbrella.h>

/**
 * An object providing possible image types and matching confidence levels.
 */
@interface CSCV_ImageType : NSObject <AZCodable>
/**
 * Confidence level that the image is a clip art.
 */
@property AZInteger *clipArtType;
/**
 * Confidence level that the image is a line drawing.
 */
@property AZInteger *lineDrawingType;
@end