/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSCV_Category.h"
#import "CSCV_AdultInfo.h"
#import "CSCV_ColorInfo.h"
#import "CSCV_ImageType.h"
#import "CSCV_ImageTag.h"
#import "CSCV_ImageDescriptionDetails.h"
#import "CSCV_FaceDescription.h"
#import "CSCV_ImageMetadata.h"

/**
 * Result of AnalyzeImage operation.
 */
@interface CSCV_ImageAnalysis : NSObject <AZCodable>
/**
 * An array indicating identified categories.
 */
@property NSArray<CSCV_Category*> *categories;
/**
 * The adult property.
 */
@property CSCV_AdultInfo *adult;
/**
 * The color property.
 */
@property CSCV_ColorInfo *color;
/**
 * The imageType property.
 */
@property CSCV_ImageType *imageType;
/**
 * A list of tags with confidence level.
 */
@property NSArray<CSCV_ImageTag*> *tags;
/**
 * The descriptionProperty property.
 */
@property CSCV_ImageDescriptionDetails *descriptionProperty;
/**
 * An array of possible faces within the image.
 */
@property NSArray<CSCV_FaceDescription*> *faces;
/**
 * Id of the request for tracking purposes.
 */
@property NSString *requestId;
/**
 * The metadata property.
 */
@property CSCV_ImageMetadata *metadata;
@end
