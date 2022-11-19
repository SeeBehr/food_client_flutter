import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:food_client/home/home_web_client_service.dart';
import 'package:food_client/profile/profile_controller.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;

class WebClientService
    implements HomeWebClientService, ProfileWebClientService {
  final bool _useMockValues;

  WebClientService({
    required final bool useMockValues,
  }) : _useMockValues = useMockValues;

  final Uri url = Uri.parse(
    'https://www.hellofresh.de/gw/api/recipes/632c3d7c683f4229430e351b',
  );
  final Map<String, String> headers = <String, String>{
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NzE0OTk5OTMsImlhdCI6MTY2ODg3MDI1MCwiaXNzIjoic2VuZiIsImp0aSI6IjE4MjBiZmVmLTYwM2ItNDEyZS05Yzg4LTU1ZDQwMjMyYzhkYiJ9.ym3BOCZAuL52rcMzfL_1zKOQbxcuVp7dPgnknif72tQ',
  };

  @override
  TaskEither<Exception, Map<String, Object?>> fetchAllRecipes() {
    if (_useMockValues) {
      return
          TaskEither<Exception, String>.tryCatch(
        () async => await rootBundle
            .loadString('assets/json/example_hello_fresh_response.json'),
        (final Object error, final _) =>
            Exception('Could not example hello fresh response.'),
      ).flatMap(
        (final String e) => Either<Exception, Map<String, Object?>>.tryCatch(
          () => jsonDecode(e) as Map<String, Object?>,
          (final Object error, final _) => Exception(
            'Could not parse data from example hello fresh to Map<String, Object?>',
          ),
        ).toTaskEither(),
      );
    }
    
    return TaskEither<Exception, String>.tryCatch(
      () async => await http.read(url, headers: headers),
      (final Object error, final _) => Exception(
        'Failed to fetch recipes: $error',
      ),
    ).flatMap(
      (final String response) =>
          TaskEither<Exception, Map<String, Object?>>.tryCatch(
        () => jsonDecode(response),
        (final Object error, final _) => Exception(
          'Failed to parse response: $error',
        ),
      ),
    );
  }

  @override
  TaskEither<Exception, Map<String, dynamic>> fetchAllThings() {
    throw UnimplementedError();
  }
}
