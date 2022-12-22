// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_persistence_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartPersistenceServiceModelRecipe {
  String get recipeId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get serving => throw _privateConstructorUsedError;
  Option<Uri> get imagePath => throw _privateConstructorUsedError;
  List<CartPersistenceServiceModelIngredient> get ingredients =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartPersistenceServiceModelRecipeCopyWith<CartPersistenceServiceModelRecipe>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPersistenceServiceModelRecipeCopyWith<$Res> {
  factory $CartPersistenceServiceModelRecipeCopyWith(
          CartPersistenceServiceModelRecipe value,
          $Res Function(CartPersistenceServiceModelRecipe) then) =
      _$CartPersistenceServiceModelRecipeCopyWithImpl<$Res,
          CartPersistenceServiceModelRecipe>;
  @useResult
  $Res call(
      {String recipeId,
      String title,
      int serving,
      Option<Uri> imagePath,
      List<CartPersistenceServiceModelIngredient> ingredients});
}

/// @nodoc
class _$CartPersistenceServiceModelRecipeCopyWithImpl<$Res,
        $Val extends CartPersistenceServiceModelRecipe>
    implements $CartPersistenceServiceModelRecipeCopyWith<$Res> {
  _$CartPersistenceServiceModelRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? title = null,
    Object? serving = null,
    Object? imagePath = null,
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CartPersistenceServiceModelIngredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartPersistenceServiceModelRecipeCopyWith<$Res>
    implements $CartPersistenceServiceModelRecipeCopyWith<$Res> {
  factory _$$_CartPersistenceServiceModelRecipeCopyWith(
          _$_CartPersistenceServiceModelRecipe value,
          $Res Function(_$_CartPersistenceServiceModelRecipe) then) =
      __$$_CartPersistenceServiceModelRecipeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String recipeId,
      String title,
      int serving,
      Option<Uri> imagePath,
      List<CartPersistenceServiceModelIngredient> ingredients});
}

/// @nodoc
class __$$_CartPersistenceServiceModelRecipeCopyWithImpl<$Res>
    extends _$CartPersistenceServiceModelRecipeCopyWithImpl<$Res,
        _$_CartPersistenceServiceModelRecipe>
    implements _$$_CartPersistenceServiceModelRecipeCopyWith<$Res> {
  __$$_CartPersistenceServiceModelRecipeCopyWithImpl(
      _$_CartPersistenceServiceModelRecipe _value,
      $Res Function(_$_CartPersistenceServiceModelRecipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? title = null,
    Object? serving = null,
    Object? imagePath = null,
    Object? ingredients = null,
  }) {
    return _then(_$_CartPersistenceServiceModelRecipe(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CartPersistenceServiceModelIngredient>,
    ));
  }
}

/// @nodoc

class _$_CartPersistenceServiceModelRecipe
    implements _CartPersistenceServiceModelRecipe {
  const _$_CartPersistenceServiceModelRecipe(
      {required this.recipeId,
      required this.title,
      required this.serving,
      required this.imagePath,
      required final List<CartPersistenceServiceModelIngredient> ingredients})
      : _ingredients = ingredients;

  @override
  final String recipeId;
  @override
  final String title;
  @override
  final int serving;
  @override
  final Option<Uri> imagePath;
  final List<CartPersistenceServiceModelIngredient> _ingredients;
  @override
  List<CartPersistenceServiceModelIngredient> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'CartPersistenceServiceModelRecipe(recipeId: $recipeId, title: $title, serving: $serving, imagePath: $imagePath, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartPersistenceServiceModelRecipe &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.serving, serving) || other.serving == serving) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeId, title, serving,
      imagePath, const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartPersistenceServiceModelRecipeCopyWith<
          _$_CartPersistenceServiceModelRecipe>
      get copyWith => __$$_CartPersistenceServiceModelRecipeCopyWithImpl<
          _$_CartPersistenceServiceModelRecipe>(this, _$identity);
}

abstract class _CartPersistenceServiceModelRecipe
    implements CartPersistenceServiceModelRecipe {
  const factory _CartPersistenceServiceModelRecipe(
      {required final String recipeId,
      required final String title,
      required final int serving,
      required final Option<Uri> imagePath,
      required final List<CartPersistenceServiceModelIngredient>
          ingredients}) = _$_CartPersistenceServiceModelRecipe;

  @override
  String get recipeId;
  @override
  String get title;
  @override
  int get serving;
  @override
  Option<Uri> get imagePath;
  @override
  List<CartPersistenceServiceModelIngredient> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_CartPersistenceServiceModelRecipeCopyWith<
          _$_CartPersistenceServiceModelRecipe>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartPersistenceServiceModelIngredient {
  bool get isTickedOff => throw _privateConstructorUsedError;
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;
  String get ingredientId => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;
  Option<double> get amount => throw _privateConstructorUsedError;
  Option<String> get unit => throw _privateConstructorUsedError;
  Option<CartPersistenceServiceModelIngredientFamilyFamily> get family =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartPersistenceServiceModelIngredientCopyWith<
          CartPersistenceServiceModelIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPersistenceServiceModelIngredientCopyWith<$Res> {
  factory $CartPersistenceServiceModelIngredientCopyWith(
          CartPersistenceServiceModelIngredient value,
          $Res Function(CartPersistenceServiceModelIngredient) then) =
      _$CartPersistenceServiceModelIngredientCopyWithImpl<$Res,
          CartPersistenceServiceModelIngredient>;
  @useResult
  $Res call(
      {bool isTickedOff,
      Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit,
      Option<CartPersistenceServiceModelIngredientFamilyFamily> family});
}

/// @nodoc
class _$CartPersistenceServiceModelIngredientCopyWithImpl<$Res,
        $Val extends CartPersistenceServiceModelIngredient>
    implements $CartPersistenceServiceModelIngredientCopyWith<$Res> {
  _$CartPersistenceServiceModelIngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTickedOff = null,
    Object? imageUrl = null,
    Object? ingredientId = null,
    Object? slug = null,
    Object? displayedName = null,
    Object? amount = null,
    Object? unit = null,
    Object? family = null,
  }) {
    return _then(_value.copyWith(
      isTickedOff: null == isTickedOff
          ? _value.isTickedOff
          : isTickedOff // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Option<CartPersistenceServiceModelIngredientFamilyFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartPersistenceServiceModelIngredientCopyWith<$Res>
    implements $CartPersistenceServiceModelIngredientCopyWith<$Res> {
  factory _$$_CartPersistenceServiceModelIngredientCopyWith(
          _$_CartPersistenceServiceModelIngredient value,
          $Res Function(_$_CartPersistenceServiceModelIngredient) then) =
      __$$_CartPersistenceServiceModelIngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isTickedOff,
      Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit,
      Option<CartPersistenceServiceModelIngredientFamilyFamily> family});
}

/// @nodoc
class __$$_CartPersistenceServiceModelIngredientCopyWithImpl<$Res>
    extends _$CartPersistenceServiceModelIngredientCopyWithImpl<$Res,
        _$_CartPersistenceServiceModelIngredient>
    implements _$$_CartPersistenceServiceModelIngredientCopyWith<$Res> {
  __$$_CartPersistenceServiceModelIngredientCopyWithImpl(
      _$_CartPersistenceServiceModelIngredient _value,
      $Res Function(_$_CartPersistenceServiceModelIngredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTickedOff = null,
    Object? imageUrl = null,
    Object? ingredientId = null,
    Object? slug = null,
    Object? displayedName = null,
    Object? amount = null,
    Object? unit = null,
    Object? family = null,
  }) {
    return _then(_$_CartPersistenceServiceModelIngredient(
      isTickedOff: null == isTickedOff
          ? _value.isTickedOff
          : isTickedOff // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
      ingredientId: null == ingredientId
          ? _value.ingredientId
          : ingredientId // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      displayedName: null == displayedName
          ? _value.displayedName
          : displayedName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Option<CartPersistenceServiceModelIngredientFamilyFamily>,
    ));
  }
}

/// @nodoc

class _$_CartPersistenceServiceModelIngredient
    implements _CartPersistenceServiceModelIngredient {
  const _$_CartPersistenceServiceModelIngredient(
      {required this.isTickedOff,
      required this.imageUrl,
      required this.ingredientId,
      required this.slug,
      required this.displayedName,
      required this.amount,
      required this.unit,
      required this.family});

  @override
  final bool isTickedOff;
  @override
  final Option<Uri> imageUrl;
  @override
  final String ingredientId;
  @override
  final String slug;
  @override
  final String displayedName;
  @override
  final Option<double> amount;
  @override
  final Option<String> unit;
  @override
  final Option<CartPersistenceServiceModelIngredientFamilyFamily> family;

  @override
  String toString() {
    return 'CartPersistenceServiceModelIngredient(isTickedOff: $isTickedOff, imageUrl: $imageUrl, ingredientId: $ingredientId, slug: $slug, displayedName: $displayedName, amount: $amount, unit: $unit, family: $family)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartPersistenceServiceModelIngredient &&
            (identical(other.isTickedOff, isTickedOff) ||
                other.isTickedOff == isTickedOff) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.ingredientId, ingredientId) ||
                other.ingredientId == ingredientId) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.displayedName, displayedName) ||
                other.displayedName == displayedName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.family, family) || other.family == family));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTickedOff, imageUrl,
      ingredientId, slug, displayedName, amount, unit, family);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartPersistenceServiceModelIngredientCopyWith<
          _$_CartPersistenceServiceModelIngredient>
      get copyWith => __$$_CartPersistenceServiceModelIngredientCopyWithImpl<
          _$_CartPersistenceServiceModelIngredient>(this, _$identity);
}

abstract class _CartPersistenceServiceModelIngredient
    implements CartPersistenceServiceModelIngredient {
  const factory _CartPersistenceServiceModelIngredient(
      {required final bool isTickedOff,
      required final Option<Uri> imageUrl,
      required final String ingredientId,
      required final String slug,
      required final String displayedName,
      required final Option<double> amount,
      required final Option<String> unit,
      required final Option<CartPersistenceServiceModelIngredientFamilyFamily>
          family}) = _$_CartPersistenceServiceModelIngredient;

  @override
  bool get isTickedOff;
  @override
  Option<Uri> get imageUrl;
  @override
  String get ingredientId;
  @override
  String get slug;
  @override
  String get displayedName;
  @override
  Option<double> get amount;
  @override
  Option<String> get unit;
  @override
  Option<CartPersistenceServiceModelIngredientFamilyFamily> get family;
  @override
  @JsonKey(ignore: true)
  _$$_CartPersistenceServiceModelIngredientCopyWith<
          _$_CartPersistenceServiceModelIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartPersistenceServiceModelIngredientFamilyFamily {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Option<String> get iconPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartPersistenceServiceModelIngredientFamilyFamilyCopyWith<
          CartPersistenceServiceModelIngredientFamilyFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPersistenceServiceModelIngredientFamilyFamilyCopyWith<
    $Res> {
  factory $CartPersistenceServiceModelIngredientFamilyFamilyCopyWith(
          CartPersistenceServiceModelIngredientFamilyFamily value,
          $Res Function(CartPersistenceServiceModelIngredientFamilyFamily)
              then) =
      _$CartPersistenceServiceModelIngredientFamilyFamilyCopyWithImpl<$Res,
          CartPersistenceServiceModelIngredientFamilyFamily>;
  @useResult
  $Res call(
      {String id,
      String type,
      Option<String> iconPath,
      String name,
      String slug});
}

/// @nodoc
class _$CartPersistenceServiceModelIngredientFamilyFamilyCopyWithImpl<$Res,
        $Val extends CartPersistenceServiceModelIngredientFamilyFamily>
    implements
        $CartPersistenceServiceModelIngredientFamilyFamilyCopyWith<$Res> {
  _$CartPersistenceServiceModelIngredientFamilyFamilyCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? iconPath = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartPersistenceServiceModelIngredientFamilyFamilyCopyWith<
        $Res>
    implements
        $CartPersistenceServiceModelIngredientFamilyFamilyCopyWith<$Res> {
  factory _$$_CartPersistenceServiceModelIngredientFamilyFamilyCopyWith(
          _$_CartPersistenceServiceModelIngredientFamilyFamily value,
          $Res Function(_$_CartPersistenceServiceModelIngredientFamilyFamily)
              then) =
      __$$_CartPersistenceServiceModelIngredientFamilyFamilyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      Option<String> iconPath,
      String name,
      String slug});
}

/// @nodoc
class __$$_CartPersistenceServiceModelIngredientFamilyFamilyCopyWithImpl<$Res>
    extends _$CartPersistenceServiceModelIngredientFamilyFamilyCopyWithImpl<
        $Res, _$_CartPersistenceServiceModelIngredientFamilyFamily>
    implements
        _$$_CartPersistenceServiceModelIngredientFamilyFamilyCopyWith<$Res> {
  __$$_CartPersistenceServiceModelIngredientFamilyFamilyCopyWithImpl(
      _$_CartPersistenceServiceModelIngredientFamilyFamily _value,
      $Res Function(_$_CartPersistenceServiceModelIngredientFamilyFamily) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? iconPath = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_$_CartPersistenceServiceModelIngredientFamilyFamily(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CartPersistenceServiceModelIngredientFamilyFamily
    implements _CartPersistenceServiceModelIngredientFamilyFamily {
  const _$_CartPersistenceServiceModelIngredientFamilyFamily(
      {required this.id,
      required this.type,
      required this.iconPath,
      required this.name,
      required this.slug});

  @override
  final String id;
  @override
  final String type;
  @override
  final Option<String> iconPath;
  @override
  final String name;
  @override
  final String slug;

  @override
  String toString() {
    return 'CartPersistenceServiceModelIngredientFamilyFamily(id: $id, type: $type, iconPath: $iconPath, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartPersistenceServiceModelIngredientFamilyFamily &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, iconPath, name, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartPersistenceServiceModelIngredientFamilyFamilyCopyWith<
          _$_CartPersistenceServiceModelIngredientFamilyFamily>
      get copyWith =>
          __$$_CartPersistenceServiceModelIngredientFamilyFamilyCopyWithImpl<
                  _$_CartPersistenceServiceModelIngredientFamilyFamily>(
              this, _$identity);
}

abstract class _CartPersistenceServiceModelIngredientFamilyFamily
    implements CartPersistenceServiceModelIngredientFamilyFamily {
  const factory _CartPersistenceServiceModelIngredientFamilyFamily(
          {required final String id,
          required final String type,
          required final Option<String> iconPath,
          required final String name,
          required final String slug}) =
      _$_CartPersistenceServiceModelIngredientFamilyFamily;

  @override
  String get id;
  @override
  String get type;
  @override
  Option<String> get iconPath;
  @override
  String get name;
  @override
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$$_CartPersistenceServiceModelIngredientFamilyFamilyCopyWith<
          _$_CartPersistenceServiceModelIngredientFamilyFamily>
      get copyWith => throw _privateConstructorUsedError;
}
