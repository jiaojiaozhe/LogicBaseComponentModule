//
//  ModuleBundle.m
//  LogicBaseComponentModule
//
//  Created by 兰彪 on 2020/9/21.
//

#import "ModuleBundle.h"

@implementation ModuleBundle

+ (NSBundle *) bundleWithName:(NSString *)bundleName{
    if(bundleName.length == 0)
        return nil;
    
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:bundleName ofType:@"bundle" inDirectory:[NSString stringWithFormat:@"Frameworks/%@.framework",bundleName]];
    return [NSBundle bundleWithPath:bundlePath];
}

+ (NSBundle *) bundle{
    return [self bundleWithName:NSStringFromClass([self class])];
}

+ (UIView *) viewWithXibFileName: (NSString *) fileName{
    return [self viewWithXibFileName:fileName inBundle:[self bundle]];
}

+ (UIImage *) imageNamed: (NSString *) imageName{
    return [self imageNamed:imageName inBundle:[self bundle]];
}

+ (UIStoryboard *) storyboardWithName: (NSString *) storyboardName{
    return [self storyboardWithName:storyboardName inBundle:[self bundle]];
}

+ (UINib *) nibWithName: (NSString *) nibName{
    return [self nibWithNibName:nibName inBundle:[self bundle]];
}

+ (UIView *) viewWithXibFileName: (NSString *) fileName bundleName:(NSString *) bundleName{
    NSBundle *bundle = [self bundleWithName:bundleName];
    return [self viewWithXibFileName:fileName inBundle:bundle];
}

+ (UIView *) viewWithXibFileName: (NSString *) fileName inBundle:(NSBundle *) bundle{
    if(fileName.length == 0 || !bundle){
        return nil;
    }
    
    UIView *xibView = [[bundle loadNibNamed:fileName owner:nil options:nil] lastObject];
    if(!xibView){
        NSString *basePath = [bundle pathForResource:@"Base" ofType:@"lproj"];
        NSBundle *baseBundle = [NSBundle bundleWithPath:basePath];
        xibView = [[baseBundle loadNibNamed:fileName owner:nil options:nil] lastObject];
    }
    return xibView;
}

+ (UIStoryboard *) storyboardWithName:(NSString *) storyboardName inBundle:(NSBundle *) bundle{
    if(storyboardName.length == 0 || !bundle){
        return nil;
    }
    
    return [UIStoryboard storyboardWithName:storyboardName bundle:bundle];
}

+ (UIStoryboard *) storyboardWithName:(NSString *) storyboardName bundleName:(NSString *) bundleName{
    NSBundle *bundle = [self bundleWithName:bundleName];
    return [self storyboardWithName:storyboardName inBundle:bundle];
}

+ (UIImage *) imageNamed:(NSString *) imageName inBundle:(NSBundle* ) bundle{
    if(imageName.length == 0 || !bundle){
        return nil;
    }
    
    return [UIImage imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:nil];
}

+ (UIImage *) imageNamed:(NSString *) imageName bundleName:(NSString *) bundleName{
    NSBundle *bundle = [self bundleWithName:bundleName];
    return [self imageNamed:imageName inBundle:bundle];
}

+ (UINib *) nibWithNibName:(NSString *) nibName inBundle:(NSBundle *) bundle{
    if(nibName.length == 0 || !bundle){
        return nil;
    }
    
    return [UINib nibWithNibName:nibName bundle:bundle];
}

+ (UINib *) nibWithNibName:(NSString *) nibName bundleName:(NSString *) bundleName{
    NSBundle *bundle = [self bundleWithName:bundleName];
    return [UINib nibWithNibName:nibName bundle:bundle];
}
@end
