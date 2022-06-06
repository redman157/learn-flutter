import 'package:flutter/widgets.dart';

import 'package:local_storage_todos_api/local_storage_todos_api.dart';
import 'package:to_do_application/bootstrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final todosApi = LocalStorageTodosApi(
    plugin: await SharedPreferences.getInstance(),
  );

  bootstrap(todosApi: todosApi);
}
