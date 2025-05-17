import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'app1_application_module_method_channel.dart';

abstract class App1ApplicationModulePlatform extends PlatformInterface {
  /// Constructs a App1ApplicationModulePlatform.
  App1ApplicationModulePlatform() : super(token: _token);

  static final Object _token = Object();

  static App1ApplicationModulePlatform _instance = MethodChannelApp1ApplicationModule();

  /// The default instance of [App1ApplicationModulePlatform] to use.
  ///
  /// Defaults to [MethodChannelApp1ApplicationModule].
  static App1ApplicationModulePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [App1ApplicationModulePlatform] when
  /// they register themselves.
  static set instance(App1ApplicationModulePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
