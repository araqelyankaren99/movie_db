import 'package:equatable/equatable.dart';

class AppConfig extends Equatable {
  const AppConfig({
    required this.host,
    required this.imageUrl,
    required this.apiKey,
  });

  final String host;
  final String imageUrl;
  final String apiKey;

  @override
  List<Object> get props => [host, imageUrl, apiKey];

  @override
  String toString() => 'host: $host , imageUrl: $imageUrl , apiKey:$apiKey';
}
