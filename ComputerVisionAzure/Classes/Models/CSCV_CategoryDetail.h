/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSCV_CelebritiesModel.h"
#import "CSCV_LandmarksModel.h"

/**
 * An object describing additional category details.
 */
@interface CSCV_CategoryDetail : NSObject <AZCodable>
/**
 * An array of celebrities if any identified.
 */
@property NSArray<CSCV_CelebritiesModel*> *celebrities;
/**
 * An array of landmarks if any identified.
 */
@property NSArray<CSCV_LandmarksModel*> *landmarks;
@end
