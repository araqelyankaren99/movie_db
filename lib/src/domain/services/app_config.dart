
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_db/src/config/app_config/config.dart';
import 'package:movie_db/src/data/data_provider/app_config.dart';

class AppConfigService {
  final _appConfigDataProvider = const AppConfigDataProvider();

  Future<void> initAppConfig() async {
    await dotenv.load(fileName: 'assets/.env');
    final host = dotenv.env['HOST'] ?? '';
    final imageUrl = dotenv.env['IMAGE_URL'] ?? '';
    final apiKey = dotenv.env['API_KEY'] ?? '';
    final appConfig = AppConfig(host: host, imageUrl: imageUrl, apiKey: apiKey);
    _appConfigDataProvider.appConfig = appConfig;
  }
}