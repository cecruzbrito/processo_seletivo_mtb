import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';

class FileModel {
  static Future<File> createFileBytes(Uint8List bytes,
      {required String nameWithExtension, bool isTemporary = false}) async {
    var fileDirectory =
        isTemporary ? (await getTemporaryDirectory()).path : (await getApplicationDocumentsDirectory()).path;
    var file = File("$fileDirectory/$nameWithExtension");
    if (await file.exists()) await file.delete();
    await file.create();
    await file.writeAsBytes(bytes);
    return file;
  }
}
