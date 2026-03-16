import 'package:dio/dio.dart';
import 'package:realview_code_exercise/core/network/network.dart';
import 'package:realview_code_exercise/features/author_search/data/datasources/author_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'network_providers.g.dart';

/// Provides a configured [Dio] singleton for the entire app.
@Riverpod(keepAlive: true)
Dio dio(Ref ref) => DioClient.create();

/// Provides the Retrofit [AuthorApiClient] backed by the shared [Dio] instance.
@Riverpod(keepAlive: true)
AuthorApiClient authorApiClient(Ref ref) => AuthorApiClient(ref.watch(dioProvider));
