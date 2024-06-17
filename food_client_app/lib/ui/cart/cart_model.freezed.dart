// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartModel {
  ViewState<CartModelData> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call({ViewState<CartModelData> data});

  $ViewStateCopyWith<CartModelData, $Res> get data;
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ViewState<CartModelData>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewStateCopyWith<CartModelData, $Res> get data {
    return $ViewStateCopyWith<CartModelData, $Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartModelImplCopyWith<$Res>
    implements $CartModelCopyWith<$Res> {
  factory _$$CartModelImplCopyWith(
          _$CartModelImpl value, $Res Function(_$CartModelImpl) then) =
      __$$CartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewState<CartModelData> data});

  @override
  $ViewStateCopyWith<CartModelData, $Res> get data;
}

/// @nodoc
class __$$CartModelImplCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$CartModelImpl>
    implements _$$CartModelImplCopyWith<$Res> {
  __$$CartModelImplCopyWithImpl(
      _$CartModelImpl _value, $Res Function(_$CartModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CartModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ViewState<CartModelData>,
    ));
  }
}

/// @nodoc

class _$CartModelImpl implements _CartModel {
  const _$CartModelImpl({required this.data});

  @override
  final ViewState<CartModelData> data;

  @override
  String toString() {
    return 'CartModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      __$$CartModelImplCopyWithImpl<_$CartModelImpl>(this, _$identity);
}

abstract class _CartModel implements CartModel {
  const factory _CartModel({required final ViewState<CartModelData> data}) =
      _$CartModelImpl;

  @override
  ViewState<CartModelData> get data;
  @override
  @JsonKey(ignore: true)
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartModelData {
  List<CartModelRecipe> get recipes => throw _privateConstructorUsedError;
  List<CartModelIngredient> get ingredients =>
      throw _privateConstructorUsedError;
  bool get combineIngredients => throw _privateConstructorUsedError;
  CartModelSorting get sorting => throw _privateConstructorUsedError;
  List<CartModelSortingUnit> get sortingUnits =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartModelDataCopyWith<CartModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelDataCopyWith<$Res> {
  factory $CartModelDataCopyWith(
          CartModelData value, $Res Function(CartModelData) then) =
      _$CartModelDataCopyWithImpl<$Res, CartModelData>;
  @useResult
  $Res call(
      {List<CartModelRecipe> recipes,
      List<CartModelIngredient> ingredients,
      bool combineIngredients,
      CartModelSorting sorting,
      List<CartModelSortingUnit> sortingUnits});

  $CartModelSortingCopyWith<$Res> get sorting;
}

/// @nodoc
class _$CartModelDataCopyWithImpl<$Res, $Val extends CartModelData>
    implements $CartModelDataCopyWith<$Res> {
  _$CartModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? ingredients = null,
    Object? combineIngredients = null,
    Object? sorting = null,
    Object? sortingUnits = null,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<CartModelRecipe>,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CartModelIngredient>,
      combineIngredients: null == combineIngredients
          ? _value.combineIngredients
          : combineIngredients // ignore: cast_nullable_to_non_nullable
              as bool,
      sorting: null == sorting
          ? _value.sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as CartModelSorting,
      sortingUnits: null == sortingUnits
          ? _value.sortingUnits
          : sortingUnits // ignore: cast_nullable_to_non_nullable
              as List<CartModelSortingUnit>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelSortingCopyWith<$Res> get sorting {
    return $CartModelSortingCopyWith<$Res>(_value.sorting, (value) {
      return _then(_value.copyWith(sorting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartModelDataImplCopyWith<$Res>
    implements $CartModelDataCopyWith<$Res> {
  factory _$$CartModelDataImplCopyWith(
          _$CartModelDataImpl value, $Res Function(_$CartModelDataImpl) then) =
      __$$CartModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CartModelRecipe> recipes,
      List<CartModelIngredient> ingredients,
      bool combineIngredients,
      CartModelSorting sorting,
      List<CartModelSortingUnit> sortingUnits});

  @override
  $CartModelSortingCopyWith<$Res> get sorting;
}

/// @nodoc
class __$$CartModelDataImplCopyWithImpl<$Res>
    extends _$CartModelDataCopyWithImpl<$Res, _$CartModelDataImpl>
    implements _$$CartModelDataImplCopyWith<$Res> {
  __$$CartModelDataImplCopyWithImpl(
      _$CartModelDataImpl _value, $Res Function(_$CartModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? ingredients = null,
    Object? combineIngredients = null,
    Object? sorting = null,
    Object? sortingUnits = null,
  }) {
    return _then(_$CartModelDataImpl(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<CartModelRecipe>,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<CartModelIngredient>,
      combineIngredients: null == combineIngredients
          ? _value.combineIngredients
          : combineIngredients // ignore: cast_nullable_to_non_nullable
              as bool,
      sorting: null == sorting
          ? _value.sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as CartModelSorting,
      sortingUnits: null == sortingUnits
          ? _value._sortingUnits
          : sortingUnits // ignore: cast_nullable_to_non_nullable
              as List<CartModelSortingUnit>,
    ));
  }
}

/// @nodoc

class _$CartModelDataImpl implements _CartModelData {
  const _$CartModelDataImpl(
      {required final List<CartModelRecipe> recipes,
      required final List<CartModelIngredient> ingredients,
      required this.combineIngredients,
      required this.sorting,
      required final List<CartModelSortingUnit> sortingUnits})
      : _recipes = recipes,
        _ingredients = ingredients,
        _sortingUnits = sortingUnits;

  final List<CartModelRecipe> _recipes;
  @override
  List<CartModelRecipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  final List<CartModelIngredient> _ingredients;
  @override
  List<CartModelIngredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  final bool combineIngredients;
  @override
  final CartModelSorting sorting;
  final List<CartModelSortingUnit> _sortingUnits;
  @override
  List<CartModelSortingUnit> get sortingUnits {
    if (_sortingUnits is EqualUnmodifiableListView) return _sortingUnits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortingUnits);
  }

  @override
  String toString() {
    return 'CartModelData(recipes: $recipes, ingredients: $ingredients, combineIngredients: $combineIngredients, sorting: $sorting, sortingUnits: $sortingUnits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelDataImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.combineIngredients, combineIngredients) ||
                other.combineIngredients == combineIngredients) &&
            (identical(other.sorting, sorting) || other.sorting == sorting) &&
            const DeepCollectionEquality()
                .equals(other._sortingUnits, _sortingUnits));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipes),
      const DeepCollectionEquality().hash(_ingredients),
      combineIngredients,
      sorting,
      const DeepCollectionEquality().hash(_sortingUnits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartModelDataImplCopyWith<_$CartModelDataImpl> get copyWith =>
      __$$CartModelDataImplCopyWithImpl<_$CartModelDataImpl>(this, _$identity);
}

abstract class _CartModelData implements CartModelData {
  const factory _CartModelData(
          {required final List<CartModelRecipe> recipes,
          required final List<CartModelIngredient> ingredients,
          required final bool combineIngredients,
          required final CartModelSorting sorting,
          required final List<CartModelSortingUnit> sortingUnits}) =
      _$CartModelDataImpl;

  @override
  List<CartModelRecipe> get recipes;
  @override
  List<CartModelIngredient> get ingredients;
  @override
  bool get combineIngredients;
  @override
  CartModelSorting get sorting;
  @override
  List<CartModelSortingUnit> get sortingUnits;
  @override
  @JsonKey(ignore: true)
  _$$CartModelDataImplCopyWith<_$CartModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartModelSorting {
  List<String> get ingredientIds => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CartModelSortingUnit active, List<String> ingredientIds)
        unit,
    required TResult Function(List<String> ingredientIds) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModelSortingUnit active, List<String> ingredientIds)?
        unit,
    TResult? Function(List<String> ingredientIds)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModelSortingUnit active, List<String> ingredientIds)?
        unit,
    TResult Function(List<String> ingredientIds)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartModelSortingSelectedUnit value) unit,
    required TResult Function(CartModelSortingCustom value) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartModelSortingSelectedUnit value)? unit,
    TResult? Function(CartModelSortingCustom value)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartModelSortingSelectedUnit value)? unit,
    TResult Function(CartModelSortingCustom value)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartModelSortingCopyWith<CartModelSorting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelSortingCopyWith<$Res> {
  factory $CartModelSortingCopyWith(
          CartModelSorting value, $Res Function(CartModelSorting) then) =
      _$CartModelSortingCopyWithImpl<$Res, CartModelSorting>;
  @useResult
  $Res call({List<String> ingredientIds});
}

/// @nodoc
class _$CartModelSortingCopyWithImpl<$Res, $Val extends CartModelSorting>
    implements $CartModelSortingCopyWith<$Res> {
  _$CartModelSortingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientIds = null,
  }) {
    return _then(_value.copyWith(
      ingredientIds: null == ingredientIds
          ? _value.ingredientIds
          : ingredientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartModelSortingSelectedUnitImplCopyWith<$Res>
    implements $CartModelSortingCopyWith<$Res> {
  factory _$$CartModelSortingSelectedUnitImplCopyWith(
          _$CartModelSortingSelectedUnitImpl value,
          $Res Function(_$CartModelSortingSelectedUnitImpl) then) =
      __$$CartModelSortingSelectedUnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartModelSortingUnit active, List<String> ingredientIds});

  $CartModelSortingUnitCopyWith<$Res> get active;
}

/// @nodoc
class __$$CartModelSortingSelectedUnitImplCopyWithImpl<$Res>
    extends _$CartModelSortingCopyWithImpl<$Res,
        _$CartModelSortingSelectedUnitImpl>
    implements _$$CartModelSortingSelectedUnitImplCopyWith<$Res> {
  __$$CartModelSortingSelectedUnitImplCopyWithImpl(
      _$CartModelSortingSelectedUnitImpl _value,
      $Res Function(_$CartModelSortingSelectedUnitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? ingredientIds = null,
  }) {
    return _then(_$CartModelSortingSelectedUnitImpl(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as CartModelSortingUnit,
      ingredientIds: null == ingredientIds
          ? _value._ingredientIds
          : ingredientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelSortingUnitCopyWith<$Res> get active {
    return $CartModelSortingUnitCopyWith<$Res>(_value.active, (value) {
      return _then(_value.copyWith(active: value));
    });
  }
}

/// @nodoc

class _$CartModelSortingSelectedUnitImpl
    implements CartModelSortingSelectedUnit {
  const _$CartModelSortingSelectedUnitImpl(
      {required this.active, required final List<String> ingredientIds})
      : _ingredientIds = ingredientIds;

  @override
  final CartModelSortingUnit active;
  final List<String> _ingredientIds;
  @override
  List<String> get ingredientIds {
    if (_ingredientIds is EqualUnmodifiableListView) return _ingredientIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientIds);
  }

  @override
  String toString() {
    return 'CartModelSorting.unit(active: $active, ingredientIds: $ingredientIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelSortingSelectedUnitImpl &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality()
                .equals(other._ingredientIds, _ingredientIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, active, const DeepCollectionEquality().hash(_ingredientIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartModelSortingSelectedUnitImplCopyWith<
          _$CartModelSortingSelectedUnitImpl>
      get copyWith => __$$CartModelSortingSelectedUnitImplCopyWithImpl<
          _$CartModelSortingSelectedUnitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CartModelSortingUnit active, List<String> ingredientIds)
        unit,
    required TResult Function(List<String> ingredientIds) custom,
  }) {
    return unit(active, ingredientIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModelSortingUnit active, List<String> ingredientIds)?
        unit,
    TResult? Function(List<String> ingredientIds)? custom,
  }) {
    return unit?.call(active, ingredientIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModelSortingUnit active, List<String> ingredientIds)?
        unit,
    TResult Function(List<String> ingredientIds)? custom,
    required TResult orElse(),
  }) {
    if (unit != null) {
      return unit(active, ingredientIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartModelSortingSelectedUnit value) unit,
    required TResult Function(CartModelSortingCustom value) custom,
  }) {
    return unit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartModelSortingSelectedUnit value)? unit,
    TResult? Function(CartModelSortingCustom value)? custom,
  }) {
    return unit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartModelSortingSelectedUnit value)? unit,
    TResult Function(CartModelSortingCustom value)? custom,
    required TResult orElse(),
  }) {
    if (unit != null) {
      return unit(this);
    }
    return orElse();
  }
}

abstract class CartModelSortingSelectedUnit implements CartModelSorting {
  const factory CartModelSortingSelectedUnit(
          {required final CartModelSortingUnit active,
          required final List<String> ingredientIds}) =
      _$CartModelSortingSelectedUnitImpl;

  CartModelSortingUnit get active;
  @override
  List<String> get ingredientIds;
  @override
  @JsonKey(ignore: true)
  _$$CartModelSortingSelectedUnitImplCopyWith<
          _$CartModelSortingSelectedUnitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartModelSortingCustomImplCopyWith<$Res>
    implements $CartModelSortingCopyWith<$Res> {
  factory _$$CartModelSortingCustomImplCopyWith(
          _$CartModelSortingCustomImpl value,
          $Res Function(_$CartModelSortingCustomImpl) then) =
      __$$CartModelSortingCustomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> ingredientIds});
}

/// @nodoc
class __$$CartModelSortingCustomImplCopyWithImpl<$Res>
    extends _$CartModelSortingCopyWithImpl<$Res, _$CartModelSortingCustomImpl>
    implements _$$CartModelSortingCustomImplCopyWith<$Res> {
  __$$CartModelSortingCustomImplCopyWithImpl(
      _$CartModelSortingCustomImpl _value,
      $Res Function(_$CartModelSortingCustomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientIds = null,
  }) {
    return _then(_$CartModelSortingCustomImpl(
      ingredientIds: null == ingredientIds
          ? _value._ingredientIds
          : ingredientIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CartModelSortingCustomImpl implements CartModelSortingCustom {
  const _$CartModelSortingCustomImpl(
      {required final List<String> ingredientIds})
      : _ingredientIds = ingredientIds;

  final List<String> _ingredientIds;
  @override
  List<String> get ingredientIds {
    if (_ingredientIds is EqualUnmodifiableListView) return _ingredientIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientIds);
  }

  @override
  String toString() {
    return 'CartModelSorting.custom(ingredientIds: $ingredientIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelSortingCustomImpl &&
            const DeepCollectionEquality()
                .equals(other._ingredientIds, _ingredientIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ingredientIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartModelSortingCustomImplCopyWith<_$CartModelSortingCustomImpl>
      get copyWith => __$$CartModelSortingCustomImplCopyWithImpl<
          _$CartModelSortingCustomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CartModelSortingUnit active, List<String> ingredientIds)
        unit,
    required TResult Function(List<String> ingredientIds) custom,
  }) {
    return custom(ingredientIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModelSortingUnit active, List<String> ingredientIds)?
        unit,
    TResult? Function(List<String> ingredientIds)? custom,
  }) {
    return custom?.call(ingredientIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModelSortingUnit active, List<String> ingredientIds)?
        unit,
    TResult Function(List<String> ingredientIds)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(ingredientIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartModelSortingSelectedUnit value) unit,
    required TResult Function(CartModelSortingCustom value) custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartModelSortingSelectedUnit value)? unit,
    TResult? Function(CartModelSortingCustom value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartModelSortingSelectedUnit value)? unit,
    TResult Function(CartModelSortingCustom value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class CartModelSortingCustom implements CartModelSorting {
  const factory CartModelSortingCustom(
          {required final List<String> ingredientIds}) =
      _$CartModelSortingCustomImpl;

  @override
  List<String> get ingredientIds;
  @override
  @JsonKey(ignore: true)
  _$$CartModelSortingCustomImplCopyWith<_$CartModelSortingCustomImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartModelSortingUnit {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<CartModelSortingIngredientFamily> get ingredientFamilies =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartModelSortingUnitCopyWith<CartModelSortingUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelSortingUnitCopyWith<$Res> {
  factory $CartModelSortingUnitCopyWith(CartModelSortingUnit value,
          $Res Function(CartModelSortingUnit) then) =
      _$CartModelSortingUnitCopyWithImpl<$Res, CartModelSortingUnit>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<CartModelSortingIngredientFamily> ingredientFamilies});
}

/// @nodoc
class _$CartModelSortingUnitCopyWithImpl<$Res,
        $Val extends CartModelSortingUnit>
    implements $CartModelSortingUnitCopyWith<$Res> {
  _$CartModelSortingUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ingredientFamilies = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientFamilies: null == ingredientFamilies
          ? _value.ingredientFamilies
          : ingredientFamilies // ignore: cast_nullable_to_non_nullable
              as List<CartModelSortingIngredientFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartModelSortingUnitImplCopyWith<$Res>
    implements $CartModelSortingUnitCopyWith<$Res> {
  factory _$$CartModelSortingUnitImplCopyWith(_$CartModelSortingUnitImpl value,
          $Res Function(_$CartModelSortingUnitImpl) then) =
      __$$CartModelSortingUnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<CartModelSortingIngredientFamily> ingredientFamilies});
}

/// @nodoc
class __$$CartModelSortingUnitImplCopyWithImpl<$Res>
    extends _$CartModelSortingUnitCopyWithImpl<$Res, _$CartModelSortingUnitImpl>
    implements _$$CartModelSortingUnitImplCopyWith<$Res> {
  __$$CartModelSortingUnitImplCopyWithImpl(_$CartModelSortingUnitImpl _value,
      $Res Function(_$CartModelSortingUnitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ingredientFamilies = null,
  }) {
    return _then(_$CartModelSortingUnitImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientFamilies: null == ingredientFamilies
          ? _value._ingredientFamilies
          : ingredientFamilies // ignore: cast_nullable_to_non_nullable
              as List<CartModelSortingIngredientFamily>,
    ));
  }
}

/// @nodoc

class _$CartModelSortingUnitImpl implements _CartModelSortingUnit {
  const _$CartModelSortingUnitImpl(
      {required this.id,
      required this.name,
      required final List<CartModelSortingIngredientFamily> ingredientFamilies})
      : _ingredientFamilies = ingredientFamilies;

  @override
  final String id;
  @override
  final String name;
  final List<CartModelSortingIngredientFamily> _ingredientFamilies;
  @override
  List<CartModelSortingIngredientFamily> get ingredientFamilies {
    if (_ingredientFamilies is EqualUnmodifiableListView)
      return _ingredientFamilies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientFamilies);
  }

  @override
  String toString() {
    return 'CartModelSortingUnit(id: $id, name: $name, ingredientFamilies: $ingredientFamilies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelSortingUnitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._ingredientFamilies, _ingredientFamilies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_ingredientFamilies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartModelSortingUnitImplCopyWith<_$CartModelSortingUnitImpl>
      get copyWith =>
          __$$CartModelSortingUnitImplCopyWithImpl<_$CartModelSortingUnitImpl>(
              this, _$identity);
}

abstract class _CartModelSortingUnit implements CartModelSortingUnit {
  const factory _CartModelSortingUnit(
      {required final String id,
      required final String name,
      required final List<CartModelSortingIngredientFamily>
          ingredientFamilies}) = _$CartModelSortingUnitImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<CartModelSortingIngredientFamily> get ingredientFamilies;
  @override
  @JsonKey(ignore: true)
  _$$CartModelSortingUnitImplCopyWith<_$CartModelSortingUnitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartModelSortingIngredientFamily {
  String get name => throw _privateConstructorUsedError;
  List<String> get familyIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartModelSortingIngredientFamilyCopyWith<CartModelSortingIngredientFamily>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelSortingIngredientFamilyCopyWith<$Res> {
  factory $CartModelSortingIngredientFamilyCopyWith(
          CartModelSortingIngredientFamily value,
          $Res Function(CartModelSortingIngredientFamily) then) =
      _$CartModelSortingIngredientFamilyCopyWithImpl<$Res,
          CartModelSortingIngredientFamily>;
  @useResult
  $Res call({String name, List<String> familyIds});
}

/// @nodoc
class _$CartModelSortingIngredientFamilyCopyWithImpl<$Res,
        $Val extends CartModelSortingIngredientFamily>
    implements $CartModelSortingIngredientFamilyCopyWith<$Res> {
  _$CartModelSortingIngredientFamilyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? familyIds = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      familyIds: null == familyIds
          ? _value.familyIds
          : familyIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartModelSortingIngredientFamilyImplCopyWith<$Res>
    implements $CartModelSortingIngredientFamilyCopyWith<$Res> {
  factory _$$CartModelSortingIngredientFamilyImplCopyWith(
          _$CartModelSortingIngredientFamilyImpl value,
          $Res Function(_$CartModelSortingIngredientFamilyImpl) then) =
      __$$CartModelSortingIngredientFamilyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> familyIds});
}

/// @nodoc
class __$$CartModelSortingIngredientFamilyImplCopyWithImpl<$Res>
    extends _$CartModelSortingIngredientFamilyCopyWithImpl<$Res,
        _$CartModelSortingIngredientFamilyImpl>
    implements _$$CartModelSortingIngredientFamilyImplCopyWith<$Res> {
  __$$CartModelSortingIngredientFamilyImplCopyWithImpl(
      _$CartModelSortingIngredientFamilyImpl _value,
      $Res Function(_$CartModelSortingIngredientFamilyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? familyIds = null,
  }) {
    return _then(_$CartModelSortingIngredientFamilyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      familyIds: null == familyIds
          ? _value._familyIds
          : familyIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CartModelSortingIngredientFamilyImpl
    implements _CartModelSortingIngredientFamily {
  const _$CartModelSortingIngredientFamilyImpl(
      {required this.name, required final List<String> familyIds})
      : _familyIds = familyIds;

  @override
  final String name;
  final List<String> _familyIds;
  @override
  List<String> get familyIds {
    if (_familyIds is EqualUnmodifiableListView) return _familyIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_familyIds);
  }

  @override
  String toString() {
    return 'CartModelSortingIngredientFamily(name: $name, familyIds: $familyIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelSortingIngredientFamilyImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._familyIds, _familyIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_familyIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartModelSortingIngredientFamilyImplCopyWith<
          _$CartModelSortingIngredientFamilyImpl>
      get copyWith => __$$CartModelSortingIngredientFamilyImplCopyWithImpl<
          _$CartModelSortingIngredientFamilyImpl>(this, _$identity);
}

abstract class _CartModelSortingIngredientFamily
    implements CartModelSortingIngredientFamily {
  const factory _CartModelSortingIngredientFamily(
          {required final String name, required final List<String> familyIds}) =
      _$CartModelSortingIngredientFamilyImpl;

  @override
  String get name;
  @override
  List<String> get familyIds;
  @override
  @JsonKey(ignore: true)
  _$$CartModelSortingIngredientFamilyImplCopyWith<
          _$CartModelSortingIngredientFamilyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartModelRecipe {
  String get title => throw _privateConstructorUsedError;
  String get recipeId => throw _privateConstructorUsedError;
  int get serving => throw _privateConstructorUsedError;
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartModelRecipeCopyWith<CartModelRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelRecipeCopyWith<$Res> {
  factory $CartModelRecipeCopyWith(
          CartModelRecipe value, $Res Function(CartModelRecipe) then) =
      _$CartModelRecipeCopyWithImpl<$Res, CartModelRecipe>;
  @useResult
  $Res call({String title, String recipeId, int serving, Option<Uri> imageUrl});
}

/// @nodoc
class _$CartModelRecipeCopyWithImpl<$Res, $Val extends CartModelRecipe>
    implements $CartModelRecipeCopyWith<$Res> {
  _$CartModelRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? recipeId = null,
    Object? serving = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartModelRecipeImplCopyWith<$Res>
    implements $CartModelRecipeCopyWith<$Res> {
  factory _$$CartModelRecipeImplCopyWith(_$CartModelRecipeImpl value,
          $Res Function(_$CartModelRecipeImpl) then) =
      __$$CartModelRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String recipeId, int serving, Option<Uri> imageUrl});
}

/// @nodoc
class __$$CartModelRecipeImplCopyWithImpl<$Res>
    extends _$CartModelRecipeCopyWithImpl<$Res, _$CartModelRecipeImpl>
    implements _$$CartModelRecipeImplCopyWith<$Res> {
  __$$CartModelRecipeImplCopyWithImpl(
      _$CartModelRecipeImpl _value, $Res Function(_$CartModelRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? recipeId = null,
    Object? serving = null,
    Object? imageUrl = null,
  }) {
    return _then(_$CartModelRecipeImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      serving: null == serving
          ? _value.serving
          : serving // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<Uri>,
    ));
  }
}

/// @nodoc

class _$CartModelRecipeImpl implements _CartModelRecipe {
  const _$CartModelRecipeImpl(
      {required this.title,
      required this.recipeId,
      required this.serving,
      required this.imageUrl});

  @override
  final String title;
  @override
  final String recipeId;
  @override
  final int serving;
  @override
  final Option<Uri> imageUrl;

  @override
  String toString() {
    return 'CartModelRecipe(title: $title, recipeId: $recipeId, serving: $serving, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelRecipeImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.serving, serving) || other.serving == serving) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, recipeId, serving, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartModelRecipeImplCopyWith<_$CartModelRecipeImpl> get copyWith =>
      __$$CartModelRecipeImplCopyWithImpl<_$CartModelRecipeImpl>(
          this, _$identity);
}

abstract class _CartModelRecipe implements CartModelRecipe {
  const factory _CartModelRecipe(
      {required final String title,
      required final String recipeId,
      required final int serving,
      required final Option<Uri> imageUrl}) = _$CartModelRecipeImpl;

  @override
  String get title;
  @override
  String get recipeId;
  @override
  int get serving;
  @override
  Option<Uri> get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$CartModelRecipeImplCopyWith<_$CartModelRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartModelIngredient {
  CartModelIngredientInfo get ingredient => throw _privateConstructorUsedError;
  bool get isTickedOff => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartModelIngredientCopyWith<CartModelIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelIngredientCopyWith<$Res> {
  factory $CartModelIngredientCopyWith(
          CartModelIngredient value, $Res Function(CartModelIngredient) then) =
      _$CartModelIngredientCopyWithImpl<$Res, CartModelIngredient>;
  @useResult
  $Res call({CartModelIngredientInfo ingredient, bool isTickedOff});

  $CartModelIngredientInfoCopyWith<$Res> get ingredient;
}

/// @nodoc
class _$CartModelIngredientCopyWithImpl<$Res, $Val extends CartModelIngredient>
    implements $CartModelIngredientCopyWith<$Res> {
  _$CartModelIngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
    Object? isTickedOff = null,
  }) {
    return _then(_value.copyWith(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as CartModelIngredientInfo,
      isTickedOff: null == isTickedOff
          ? _value.isTickedOff
          : isTickedOff // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelIngredientInfoCopyWith<$Res> get ingredient {
    return $CartModelIngredientInfoCopyWith<$Res>(_value.ingredient, (value) {
      return _then(_value.copyWith(ingredient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartModelIngredientImplCopyWith<$Res>
    implements $CartModelIngredientCopyWith<$Res> {
  factory _$$CartModelIngredientImplCopyWith(_$CartModelIngredientImpl value,
          $Res Function(_$CartModelIngredientImpl) then) =
      __$$CartModelIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartModelIngredientInfo ingredient, bool isTickedOff});

  @override
  $CartModelIngredientInfoCopyWith<$Res> get ingredient;
}

/// @nodoc
class __$$CartModelIngredientImplCopyWithImpl<$Res>
    extends _$CartModelIngredientCopyWithImpl<$Res, _$CartModelIngredientImpl>
    implements _$$CartModelIngredientImplCopyWith<$Res> {
  __$$CartModelIngredientImplCopyWithImpl(_$CartModelIngredientImpl _value,
      $Res Function(_$CartModelIngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
    Object? isTickedOff = null,
  }) {
    return _then(_$CartModelIngredientImpl(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as CartModelIngredientInfo,
      isTickedOff: null == isTickedOff
          ? _value.isTickedOff
          : isTickedOff // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CartModelIngredientImpl implements _CartModelIngredient {
  const _$CartModelIngredientImpl(
      {required this.ingredient, required this.isTickedOff});

  @override
  final CartModelIngredientInfo ingredient;
  @override
  final bool isTickedOff;

  @override
  String toString() {
    return 'CartModelIngredient(ingredient: $ingredient, isTickedOff: $isTickedOff)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelIngredientImpl &&
            (identical(other.ingredient, ingredient) ||
                other.ingredient == ingredient) &&
            (identical(other.isTickedOff, isTickedOff) ||
                other.isTickedOff == isTickedOff));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ingredient, isTickedOff);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartModelIngredientImplCopyWith<_$CartModelIngredientImpl> get copyWith =>
      __$$CartModelIngredientImplCopyWithImpl<_$CartModelIngredientImpl>(
          this, _$identity);
}

abstract class _CartModelIngredient implements CartModelIngredient {
  const factory _CartModelIngredient(
      {required final CartModelIngredientInfo ingredient,
      required final bool isTickedOff}) = _$CartModelIngredientImpl;

  @override
  CartModelIngredientInfo get ingredient;
  @override
  bool get isTickedOff;
  @override
  @JsonKey(ignore: true)
  _$$CartModelIngredientImplCopyWith<_$CartModelIngredientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartModelIngredientInfo {
  Option<Uri> get imageUrl => throw _privateConstructorUsedError;
  String get ingredientId => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get displayedName => throw _privateConstructorUsedError;
  Option<double> get amount => throw _privateConstructorUsedError;
  Option<String> get unit => throw _privateConstructorUsedError;
  List<String> get recipeIds => throw _privateConstructorUsedError;
  Option<CartModelIngredientFamily> get family =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartModelIngredientInfoCopyWith<CartModelIngredientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelIngredientInfoCopyWith<$Res> {
  factory $CartModelIngredientInfoCopyWith(CartModelIngredientInfo value,
          $Res Function(CartModelIngredientInfo) then) =
      _$CartModelIngredientInfoCopyWithImpl<$Res, CartModelIngredientInfo>;
  @useResult
  $Res call(
      {Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit,
      List<String> recipeIds,
      Option<CartModelIngredientFamily> family});
}

/// @nodoc
class _$CartModelIngredientInfoCopyWithImpl<$Res,
        $Val extends CartModelIngredientInfo>
    implements $CartModelIngredientInfoCopyWith<$Res> {
  _$CartModelIngredientInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? ingredientId = null,
    Object? slug = null,
    Object? displayedName = null,
    Object? amount = null,
    Object? unit = null,
    Object? recipeIds = null,
    Object? family = null,
  }) {
    return _then(_value.copyWith(
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
      recipeIds: null == recipeIds
          ? _value.recipeIds
          : recipeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Option<CartModelIngredientFamily>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartModelIngredientInfoImplCopyWith<$Res>
    implements $CartModelIngredientInfoCopyWith<$Res> {
  factory _$$CartModelIngredientInfoImplCopyWith(
          _$CartModelIngredientInfoImpl value,
          $Res Function(_$CartModelIngredientInfoImpl) then) =
      __$$CartModelIngredientInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Uri> imageUrl,
      String ingredientId,
      String slug,
      String displayedName,
      Option<double> amount,
      Option<String> unit,
      List<String> recipeIds,
      Option<CartModelIngredientFamily> family});
}

/// @nodoc
class __$$CartModelIngredientInfoImplCopyWithImpl<$Res>
    extends _$CartModelIngredientInfoCopyWithImpl<$Res,
        _$CartModelIngredientInfoImpl>
    implements _$$CartModelIngredientInfoImplCopyWith<$Res> {
  __$$CartModelIngredientInfoImplCopyWithImpl(
      _$CartModelIngredientInfoImpl _value,
      $Res Function(_$CartModelIngredientInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? ingredientId = null,
    Object? slug = null,
    Object? displayedName = null,
    Object? amount = null,
    Object? unit = null,
    Object? recipeIds = null,
    Object? family = null,
  }) {
    return _then(_$CartModelIngredientInfoImpl(
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
      recipeIds: null == recipeIds
          ? _value._recipeIds
          : recipeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Option<CartModelIngredientFamily>,
    ));
  }
}

/// @nodoc

class _$CartModelIngredientInfoImpl implements _CartModelIngredientInfo {
  const _$CartModelIngredientInfoImpl(
      {required this.imageUrl,
      required this.ingredientId,
      required this.slug,
      required this.displayedName,
      required this.amount,
      required this.unit,
      required final List<String> recipeIds,
      required this.family})
      : _recipeIds = recipeIds;

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
  final List<String> _recipeIds;
  @override
  List<String> get recipeIds {
    if (_recipeIds is EqualUnmodifiableListView) return _recipeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipeIds);
  }

  @override
  final Option<CartModelIngredientFamily> family;

  @override
  String toString() {
    return 'CartModelIngredientInfo(imageUrl: $imageUrl, ingredientId: $ingredientId, slug: $slug, displayedName: $displayedName, amount: $amount, unit: $unit, recipeIds: $recipeIds, family: $family)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelIngredientInfoImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.ingredientId, ingredientId) ||
                other.ingredientId == ingredientId) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.displayedName, displayedName) ||
                other.displayedName == displayedName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            const DeepCollectionEquality()
                .equals(other._recipeIds, _recipeIds) &&
            (identical(other.family, family) || other.family == family));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      imageUrl,
      ingredientId,
      slug,
      displayedName,
      amount,
      unit,
      const DeepCollectionEquality().hash(_recipeIds),
      family);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartModelIngredientInfoImplCopyWith<_$CartModelIngredientInfoImpl>
      get copyWith => __$$CartModelIngredientInfoImplCopyWithImpl<
          _$CartModelIngredientInfoImpl>(this, _$identity);
}

abstract class _CartModelIngredientInfo implements CartModelIngredientInfo {
  const factory _CartModelIngredientInfo(
          {required final Option<Uri> imageUrl,
          required final String ingredientId,
          required final String slug,
          required final String displayedName,
          required final Option<double> amount,
          required final Option<String> unit,
          required final List<String> recipeIds,
          required final Option<CartModelIngredientFamily> family}) =
      _$CartModelIngredientInfoImpl;

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
  List<String> get recipeIds;
  @override
  Option<CartModelIngredientFamily> get family;
  @override
  @JsonKey(ignore: true)
  _$$CartModelIngredientInfoImplCopyWith<_$CartModelIngredientInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartModelIngredientFamily {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Option<String> get iconPath => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartModelIngredientFamilyCopyWith<CartModelIngredientFamily> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelIngredientFamilyCopyWith<$Res> {
  factory $CartModelIngredientFamilyCopyWith(CartModelIngredientFamily value,
          $Res Function(CartModelIngredientFamily) then) =
      _$CartModelIngredientFamilyCopyWithImpl<$Res, CartModelIngredientFamily>;
  @useResult
  $Res call(
      {String id,
      String type,
      Option<String> iconPath,
      String name,
      String slug});
}

/// @nodoc
class _$CartModelIngredientFamilyCopyWithImpl<$Res,
        $Val extends CartModelIngredientFamily>
    implements $CartModelIngredientFamilyCopyWith<$Res> {
  _$CartModelIngredientFamilyCopyWithImpl(this._value, this._then);

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
abstract class _$$CartModelIngredientFamilyImplCopyWith<$Res>
    implements $CartModelIngredientFamilyCopyWith<$Res> {
  factory _$$CartModelIngredientFamilyImplCopyWith(
          _$CartModelIngredientFamilyImpl value,
          $Res Function(_$CartModelIngredientFamilyImpl) then) =
      __$$CartModelIngredientFamilyImplCopyWithImpl<$Res>;
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
class __$$CartModelIngredientFamilyImplCopyWithImpl<$Res>
    extends _$CartModelIngredientFamilyCopyWithImpl<$Res,
        _$CartModelIngredientFamilyImpl>
    implements _$$CartModelIngredientFamilyImplCopyWith<$Res> {
  __$$CartModelIngredientFamilyImplCopyWithImpl(
      _$CartModelIngredientFamilyImpl _value,
      $Res Function(_$CartModelIngredientFamilyImpl) _then)
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
    return _then(_$CartModelIngredientFamilyImpl(
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

class _$CartModelIngredientFamilyImpl implements _CartModelIngredientFamily {
  const _$CartModelIngredientFamilyImpl(
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
    return 'CartModelIngredientFamily(id: $id, type: $type, iconPath: $iconPath, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelIngredientFamilyImpl &&
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
  _$$CartModelIngredientFamilyImplCopyWith<_$CartModelIngredientFamilyImpl>
      get copyWith => __$$CartModelIngredientFamilyImplCopyWithImpl<
          _$CartModelIngredientFamilyImpl>(this, _$identity);
}

abstract class _CartModelIngredientFamily implements CartModelIngredientFamily {
  const factory _CartModelIngredientFamily(
      {required final String id,
      required final String type,
      required final Option<String> iconPath,
      required final String name,
      required final String slug}) = _$CartModelIngredientFamilyImpl;

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
  _$$CartModelIngredientFamilyImplCopyWith<_$CartModelIngredientFamilyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
