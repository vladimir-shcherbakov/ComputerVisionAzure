/**
 * Code generated by Microsoft (R) AutoRest Code Generator.
 * Changes may cause incorrect behavior and will be lost if the code is
 * regenerated.
*/

#import <AzureClientRuntime/AzureClientRuntime-umbrella.h>

/**
 * An object providing additional metadata describing color attributes.
*/
@interface ColorInfo : NSObject <Codable>

    /**
     * Possible dominant foreground color.
    */
    // json "dominantColorForeground"
    @property  NSString* dominantColorForeground;

    /**
     * Possible dominant background color.
    */
    // json "dominantColorBackground"
    @property  NSString* dominantColorBackground;

    /**
     * An array of possible dominant colors.
    */
    // json "dominantColors"
    @property  NSArray<NSString*>* dominantColors;

    /**
     * Possible accent color.
    */
    // json "accentColor"
    @property  NSString* accentColor;

    /**
     * A value indicating if the image is black and white.
    */
    // json "isBWImg"
    @property  AZBoolean* isBWImg;


@end