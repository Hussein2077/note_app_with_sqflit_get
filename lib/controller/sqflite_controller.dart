import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

abstract class SqfLiteController extends GetxController {
  initData();
  onCreate(Database db, int version);
  readData(String sql);
  insertData(String sql);
  updateData(String sql);
  deleteData(String sql);

}

class SqfLiteControllerImp extends SqfLiteController {
  static late Database _db;
  @override
  initData() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'notes.db');

// Delete the database
    await deleteDatabase(path);

// open the database
    Database mydb = await openDatabase(path, version: 1,
        onCreate: onCreate);
  update();
  }

  @override
  onCreate(Database db, int version) async {
      // When creating the db, create the table
      await db.execute('''CREATE TABLE Notes 
              (id INTEGER PRIMARY KEY, note TEXT,color INTEGER)
              ''');
      update();

  }
    Future<Database?> get db async{
if (_db==null){
  _db=await initData();
  return _db;

}else{
  return _db;
}


    }
  @override

  readData(String sql)async{
    Database ? mydb=await db ;
    Future<List<Map<String, Object?>>> response=mydb!.rawQuery(sql);
    return response;

  }  @override

  insertData(String sql)async{
    Database ? mydb=await db ;
    Future<int> response=mydb!.rawInsert(sql);
    return response;
  }  @override

  updateData(String sql)async{
    Database ? mydb=await db ;
    Future<int> response=mydb!.rawUpdate(sql);
    return response;
  }
  @override
  deleteData(String sql)async{
    Database ? mydb=await db ;
    Future<int> response=mydb!.rawDelete(sql);
    return response;
  }


}
