import 'package:movie_db/src/config/app_config/config.dart';

AppConfig _appConfig =  const AppConfig(host: '', imageUrl: '', apiKey: '');
class AppConfigDataProvider {
  const AppConfigDataProvider();
  AppConfig get appConfig => _appConfig;

  set appConfig(AppConfig appConfig) {
    if (_appConfig == appConfig) {
      return;
    }

    _appConfig = appConfig;
  }
}