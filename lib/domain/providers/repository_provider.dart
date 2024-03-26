import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ondemand/data/auth/auth_repo.dart';
import 'package:ondemand/data/auth/auth_repo_impl.dart';
import 'package:ondemand/data/home/home_repo.dart';
import 'package:ondemand/data/home/home_repo_impl.dart';
import 'package:ondemand/data/videoDetail/video_detail_repo.dart';
import 'package:ondemand/data/videoDetail/video_detail_repo_impl.dart';

import 'package:ondemand/domain/providers/api_client_provider.dart';

final authRepositoryProvider = Provider<AuthRepo>(
  (ref) => AuthRepoImpl(
    ref.read(apiClientProvider),
  ),
);
final homeRepositoryProvider = Provider<HomeRepo>(
  (ref) => HomeRepoImpl(
    ref.read(apiClientProvider),
  ),
);

final videoDetailRepositoryProvider = Provider<VideoRepo>(
  (ref) => VideoDetailRepoImpl(
    ref.read(apiClientProvider),
  ),
);
