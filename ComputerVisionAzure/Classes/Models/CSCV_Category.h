/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSCV_CategoryDetail.h"

/**
 * An object describing identified category.
 */
@interface CSCV_Category : NSObject <AZCodable>
/**
 * Name of the category.
 */
@property NSString *name;
/**
 * Scoring of the category.
 */
@property AZDouble *score;
/**
 * The detail property.
 */
@property CSCV_CategoryDetail *detail;
@end
