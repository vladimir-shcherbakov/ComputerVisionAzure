/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSCV_ImageCaption.h"

/**
 * A collection of content tags, along with a list of captions sorted by
 * confidence level, and image metadata.
 */
@interface CSCV_ImageDescriptionDetails : NSObject <AZCodable>
/**
 * A collection of image tags.
 */
@property NSArray<NSString*> *tags;
/**
 * A list of captions, sorted by confidence level.
 */
@property NSArray<CSCV_ImageCaption*> *captions;
@end
