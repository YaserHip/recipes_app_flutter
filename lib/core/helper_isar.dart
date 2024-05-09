import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:recipes_app_flutter/features/auth/data/models/model_user.dart';

class HelperIsar {
  late Isar isar;

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([ModelUserSchema], directory: dir.path);
  }

  Isar getIsar() {
    return isar;
  }
}
