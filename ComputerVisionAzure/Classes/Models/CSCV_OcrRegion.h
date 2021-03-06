/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime.h>
#import "CSCV_OcrLine.h"

/**
 * A region consists of multiple lines (e.g. a column of text in a multi-column
 * document).
 */
@interface CSCV_OcrRegion : NSObject <AZCodable>
/**
 * Bounding box of a recognized region. The four integers represent the
 * x-coordinate of the left edge, the y-coordinate of the top edge, width, and
 * height of the bounding box, in the coordinate system of the input image,
 * after it has been rotated around its center according to the detected text
 * angle (see textAngle property), with the origin at the top-left corner, and
 * the y-axis pointing down.
 */
@property NSString *boundingBox;
/**
 * The lines property.
 */
@property NSArray<CSCV_OcrLine*> *lines;
@end
