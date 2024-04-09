import "package:path/path.dart";
import "package:path_provider/path_provider.dart";
import "package:sembast/sembast.dart";
import "package:sembast/sembast_io.dart";

class Storage {
  static Database? _db;
  static StoreRef? _store;

  static Future<Database> getDb() async {
    if (_db == null) {
      // Create path
      final appDocDir = await getApplicationDocumentsDirectory();
      await appDocDir.create(recursive: true);

      final dbPath = join(appDocDir.path, "southpark.db");

      DatabaseFactory dbFactory = databaseFactoryIo;
      _db = await dbFactory.openDatabase(dbPath);
    }
    return _db!;
  }

  static StoreRef getStore() {
    _store ??= StoreRef.main();
    return _store!;
  }
}
