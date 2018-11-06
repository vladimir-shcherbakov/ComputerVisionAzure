/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>

/**
 * An object describing whether the image contains adult-oriented content
 * and/or is racy.
 */
@interface CSCV_AdultInfo : NSObject <AZCodable>
/**
 * A value indicating if the image contains adult-oriented content.
 */
@property AZBoolean *isAdultContent;
/**
 * A value indicating if the image is race.
 */
@property AZBoolean *isRacyContent;
/**
 * Score from 0 to 1 that indicates how much of adult content is within the
 * image.
 */
@property AZDouble *adultScore;
/**
 * Score from 0 to 1 that indicates how suggestive is the image.
 */
@property AZDouble *racyScore;
@end
