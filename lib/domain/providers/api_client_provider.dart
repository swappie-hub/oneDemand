import 'package:ondemand/core/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());
final multiPartClientProvider =
    Provider<MultiPartClient>((ref) => MultiPartClient());
