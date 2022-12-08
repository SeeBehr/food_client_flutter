import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_client/commons/type_adapters.dart';
import 'package:food_client/providers/providers.dart';
import 'package:food_client/services/persistence_service/persistence_service.dart';
import 'package:food_client/services/persistence_service/persistence_service_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  Hive
    ..registerAdapter(OptionUriAdapter())
    ..registerAdapter(OptionDoubleAdapter())
    ..registerAdapter(OptionStringAdapter())
    ..registerAdapter(UriAdapter())
    ..registerAdapter(
      PersistenceServiceModelShoppingListIngredientAdapter(),
    );
  await Hive.openBox<PersistenceServiceModelShoppingListIngredient>(
    ingredientsBoxName,
  );
  await Hive.initFlutter();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) =>
      MaterialApp.router(
        title: 'Food client',
        darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            brightness: Brightness.dark,
            // seedColor: Colors.amberAccent,
            primarySwatch: Colors.pink,
            accentColor: Colors.amberAccent,
            backgroundColor: Colors.green,
          ),
          useMaterial3: true,
        ),
        routeInformationParser: BeamerParser(),
        backButtonDispatcher: BeamerBackButtonDispatcher(
          delegate: ref.read(providers.globalBeamerDelegate),
        ),
        routerDelegate: ref.read(providers.globalBeamerDelegate),
      );
}
