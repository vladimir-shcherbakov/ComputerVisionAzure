/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>

/**
 * An image caption, i.e. a brief description of what the image depicts.
 */
@interface CSCV_ImageCaption : NSObject <AZCodable>
/**
 * The text of the caption.
 */
@property NSString *text;
/**
 * The level of confidence the service has in the caption.
 */
@property AZDouble *confidence;
@end
