import 'dart:convert';
import 'dart:typed_data';
import 'package:archive/archive_io.dart';

import '../file_model/file_model.dart';

class ZipModel {
  static Future<Archive> decode(String base64Enconde) async {
    var temporaryFile = await FileModel.createFileBytes(base64Decode(base64Enconde),
        nameWithExtension: "temporary_zip.zip", isTemporary: true);
    var stremFile = InputFileStream(temporaryFile.path);
    return ZipDecoder().decodeBuffer(stremFile);
  }

  static Future<String> createFileData(Archive archive, int indexArchive) async {
    var bytes = Uint8List.fromList(archive.fileData(0));
    return (await FileModel.createFileBytes(bytes,
            nameWithExtension: archive.files[indexArchive].name, isTemporary: true))
        .path;
  }
}
