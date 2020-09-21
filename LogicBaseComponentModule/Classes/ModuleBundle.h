//
//  ModuleBundle.h
//  LogicBaseComponentModule
//
//  Created by 兰彪 on 2020/9/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ModuleBundle : NSObject

/**
 * 根据bundle的名称获取bandle
 */
+ (NSBundle *) bundleWithName:(NSString *)bundleName;

/**
 *当前module所在的bundle
 */
+ (NSBundle *) bundle;

/**
 *  根据名称在当前module中获取view
 */
+ (UIView *) viewWithXibFileName: (NSString *) fileName;

/**
 * 根据图片名获取图像对象，在module
 */
+ (UIImage *) imageNamed: (NSString *) imageName;
/**
* 根据名称获取UIStoryboard对象，在module
*/
+ (UIStoryboard *) storyboardWithName: (NSString *) storyboardName;

/**
* 根据名称获取UINib对象，在module
*/
+ (UINib *) nibWithName: (NSString *) nibName;

+ (UIView *) viewWithXibFileName: (NSString *) fileName bundleName:(NSString *) bundleName;

+ (UIView *) viewWithXibFileName: (NSString *) fileName inBundle:(NSBundle *) bundle;

+ (UIStoryboard *) storyboardWithName:(NSString *) storyboardName inBundle:(NSBundle *) bundle;

+ (UIStoryboard *) storyboardWithName:(NSString *) storyboardName bundleName:(NSString *) bundleName;

+ (UIImage *) imageNamed:(NSString *) imageName inBundle:(NSBundle* ) bundle;

+ (UIImage *) imageNamed:(NSString *) imageName bundleName:(NSString *) bundleName;

+ (UINib *) nibWithNibName:(NSString *) nibName inBundle:(NSBundle *) bundle;

+ (UINib *) nibWithNibName:(NSString *) nibName bundleName:(NSString *) bundleName;
@end

NS_ASSUME_NONNULL_END
