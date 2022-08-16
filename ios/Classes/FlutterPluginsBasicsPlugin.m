#import "FlutterPluginsBasicsPlugin.h"
#if __has_include(<flutter_plugins_basics/flutter_plugins_basics-Swift.h>)
#import <flutter_plugins_basics/flutter_plugins_basics-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_plugins_basics-Swift.h"
#endif

@implementation FlutterPluginsBasicsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPluginsBasicsPlugin registerWithRegistrar:registrar];
}
@end
