import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_application/home/view/home_page.dart';
import 'package:to_do_application/l10n/l10n.dart';
import 'package:to_do_application/theme/theme.dart';
import 'package:todos_repository/todos_repository.dart';


class App extends StatelessWidget {
  const App({Key? key, required this.todosRepository}) : super(key: key);
  final TodosRepository todosRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(value: todosRepository, child: AppView());
  }
}

class AppView extends StatelessWidget{
  const AppView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FlutterTodosTheme.light,
      darkTheme: FlutterTodosTheme.dark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: HomePage(),
    );
  }
}