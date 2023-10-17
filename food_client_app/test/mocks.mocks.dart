// Mocks generated by Mockito 5.4.2 from annotations
// in food_client/test/mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;
import 'dart:ui' as _i4;

import 'package:flutter/material.dart' as _i8;
import 'package:food_client/services/navigation_service/navigation_service.dart'
    as _i9;
import 'package:food_client/ui/home/home_navigation_service.dart' as _i6;
import 'package:food_client/ui/home/home_web_client_service.dart' as _i3;
import 'package:food_client/ui/home/home_web_image_sizer_service.dart' as _i5;
import 'package:fpdart/fpdart.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeTaskEither_0<L, R> extends _i1.SmartFake
    implements _i2.TaskEither<L, R> {
  _FakeTaskEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [HomeWebClientService].
///
/// See the documentation for Mockito's code generation for more information.
class MockHomeWebClientService extends _i1.Mock
    implements _i3.HomeWebClientService {
  MockHomeWebClientService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TaskEither<Exception, _i3.HomeWebClientModelRecipeResponse> fetchRecipes({
    required int? take,
    required int? skip,
    required List<_i4.Locale>? recipeLocales,
    _i2.Option<List<String>>? tagIds = const _i2.None(),
    _i2.Option<String>? cuisineId = const _i2.None(),
    _i2.Option<List<String>>? ingredients = const _i2.None(),
    _i2.Option<String>? searchTerm = const _i2.None(),
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchRecipes,
          [],
          {
            #take: take,
            #skip: skip,
            #recipeLocales: recipeLocales,
            #tagIds: tagIds,
            #cuisineId: cuisineId,
            #ingredients: ingredients,
            #searchTerm: searchTerm,
          },
        ),
        returnValue:
            _FakeTaskEither_0<Exception, _i3.HomeWebClientModelRecipeResponse>(
          this,
          Invocation.method(
            #fetchRecipes,
            [],
            {
              #take: take,
              #skip: skip,
              #recipeLocales: recipeLocales,
              #tagIds: tagIds,
              #cuisineId: cuisineId,
              #ingredients: ingredients,
              #searchTerm: searchTerm,
            },
          ),
        ),
      ) as _i2.TaskEither<Exception, _i3.HomeWebClientModelRecipeResponse>);

  @override
  _i2.TaskEither<Exception, List<_i3.HomeWebClientModelCuisine>>
      fetchAllCuisines({
    required List<_i4.Locale>? recipeLocales,
    _i2.Option<int>? take = const _i2.None(),
  }) =>
          (super.noSuchMethod(
            Invocation.method(
              #fetchAllCuisines,
              [],
              {
                #recipeLocales: recipeLocales,
                #take: take,
              },
            ),
            returnValue: _FakeTaskEither_0<Exception,
                List<_i3.HomeWebClientModelCuisine>>(
              this,
              Invocation.method(
                #fetchAllCuisines,
                [],
                {
                  #recipeLocales: recipeLocales,
                  #take: take,
                },
              ),
            ),
          ) as _i2.TaskEither<Exception, List<_i3.HomeWebClientModelCuisine>>);

  @override
  _i2.TaskEither<Exception, List<_i3.HomeWebClientModelTag>> fetchAllTags({
    required List<_i4.Locale>? recipeLocales,
    _i2.Option<int>? take = const _i2.None(),
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchAllTags,
          [],
          {
            #recipeLocales: recipeLocales,
            #take: take,
          },
        ),
        returnValue:
            _FakeTaskEither_0<Exception, List<_i3.HomeWebClientModelTag>>(
          this,
          Invocation.method(
            #fetchAllTags,
            [],
            {
              #recipeLocales: recipeLocales,
              #take: take,
            },
          ),
        ),
      ) as _i2.TaskEither<Exception, List<_i3.HomeWebClientModelTag>>);
}

/// A class which mocks [HomeWebImageSizerService].
///
/// See the documentation for Mockito's code generation for more information.
class MockHomeWebImageSizerService extends _i1.Mock
    implements _i5.HomeWebImageSizerService {
  MockHomeWebImageSizerService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Either<Exception, Uri> getUrl({
    required Uri? filePath,
    required int? widthPixels,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUrl,
          [],
          {
            #filePath: filePath,
            #widthPixels: widthPixels,
          },
        ),
        returnValue: _FakeEither_1<Exception, Uri>(
          this,
          Invocation.method(
            #getUrl,
            [],
            {
              #filePath: filePath,
              #widthPixels: widthPixels,
            },
          ),
        ),
      ) as _i2.Either<Exception, Uri>);
}

/// A class which mocks [HomeNavigationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockHomeNavigationService extends _i1.Mock
    implements _i6.HomeNavigationService {
  MockHomeNavigationService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void goBack({Uri? fallbackUri}) => super.noSuchMethod(
        Invocation.method(
          #goBack,
          [],
          {#fallbackUri: fallbackUri},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void replaceWithNamed({required Uri? uri}) => super.noSuchMethod(
        Invocation.method(
          #replaceWithNamed,
          [],
          {#uri: uri},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void navigateToNamed({required Uri? uri}) => super.noSuchMethod(
        Invocation.method(
          #navigateToNamed,
          [],
          {#uri: uri},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void showSnackBar({required String? message}) => super.noSuchMethod(
        Invocation.method(
          #showSnackBar,
          [],
          {#message: message},
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.Future<void> showModalBottomSheet({required _i8.Widget? child}) =>
      (super.noSuchMethod(
        Invocation.method(
          #showModalBottomSheet,
          [],
          {#child: child},
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> showDialog({
    _i2.Option<List<_i9.NavigationServiceDialogAction>>? actions =
        const _i2.None(),
    required String? content,
    required String? title,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showDialog,
          [],
          {
            #actions: actions,
            #content: content,
            #title: title,
          },
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  void closeDialog<T>({T? data}) => super.noSuchMethod(
        Invocation.method(
          #closeDialog,
          [],
          {#data: data},
        ),
        returnValueForMissingStub: null,
      );
}
