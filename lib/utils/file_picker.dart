import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';

import 'package:image_picker/image_picker.dart';

Future<File?> openPickImageModalSheet(BuildContext context,
    {bool cropper = true, bool isPdfPicker = false}) async {
  File? file;

  await showModalBottomSheet(
      context: context,
      builder: (context) => Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            height: 238,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    "Choose From",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                // SizedBox(
                //   height: kWidgetSPadding,
                // ),
                MaterialButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () async {
                    await pickImage(ImageSource.camera).then((image) async {
                      if (image == null) {
                        // _snackbarService.showSnackbar(
                        //     message: "Image capture failed");
                      } else {
                        final cropImage = await _cropImage(image, context);
                        file = File(cropImage!.path);
                        // file = image;
                      }
                    });
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 16),
                      const Icon(Icons.camera_alt),
                      const SizedBox(width: 16),
                      Text(
                        "Camera",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () async {
                    await pickImage(ImageSource.gallery).then((image) async {
                      if (image == null) {
                        // _snackbarService.showSnackbar(
                        //     message: "Image capture failed");
                      } else if (cropper) {
                        final cropImage = await _cropImage(image, context);
                        file = File(cropImage!.path);

                        // file = image;
                      } else {
                        file = image;
                      }
                    });
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      const SizedBox(width: 16),
                      const Icon(Icons.image),
                      const SizedBox(width: 16),
                      Text(
                        "Gallery",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),

                isPdfPicker
                    ? MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        onPressed: () async {
                          await pdfPicker().then((file2) async {
                            file = File(file2?.path ?? "");
                          });
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            const SizedBox(width: 16),
                            const Icon(Icons.document_scanner),
                            const SizedBox(width: 16),
                            Text(
                              "Pdf",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ));

  Uint8List? testunit = await file?.readAsBytes();
  // print("Actual file size in byte==" + testunit?.lengthInBytes.toString());
  if (testunit!.lengthInBytes >= 500000) {
    double quality = (500000 / testunit.lengthInBytes) * 100;
    // print("=====ddd $quality");
    // String test = quality.toStringAsFixed(0);
    // int imgQuality = int.parse(test);
    // Uint8List uint8File = await testComporessList(file, 50);
    // print("==After compress 2mb to 6mb" + uint8File.lengthInBytes.toString());
    // print("==File path " + File.fromRawPath(uint8File).toString());
    // return File.fromRawPath(uint8File);
    print("-----$file");
    return file;
    // return compressFile(file, quality);
  } else {
    return file;
  }

  // return file;
}

Future<File?> openPickImageVideoModalSheet(BuildContext context,
    {bool cropper = true, bool isPdfPicker = false}) async {
  File? file;

  await showModalBottomSheet(
      context: context,
      builder: (context) => Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            height: 238,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    "Choose From",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                // SizedBox(
                //   height: kWidgetSPadding,
                // ),
                MaterialButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () async {
                    await pickImage(ImageSource.camera).then((image) async {
                      if (image == null) {
                        // _snackbarService.showSnackbar(
                        //     message: "Image capture failed");
                      } else {
                        final cropImage = await _cropImage(image, context);
                        file = File(cropImage!.path);
                        // file = image;
                      }
                    });
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 16),
                      const Icon(Icons.camera_alt),
                      const SizedBox(width: 16),
                      Text(
                        "Image from Camera",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () async {
                    await pickImage(ImageSource.gallery).then((image) async {
                      if (image == null) {
                        // _snackbarService.showSnackbar(
                        //     message: "Image capture failed");
                      } else if (cropper) {
                        final cropImage = await _cropImage(image, context);
                        file = File(cropImage!.path);

                        // file = image;
                      } else {
                        file = image;
                      }
                    });
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      const SizedBox(width: 16),
                      const Icon(Icons.image),
                      const SizedBox(width: 16),
                      Text(
                        "Image from Gallery",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ));

  Uint8List? testunit = await file?.readAsBytes();
  // print("Actual file size in byte==" + testunit?.lengthInBytes.toString());
  if (testunit!.lengthInBytes >= 500000) {
    double quality = (500000 / testunit.lengthInBytes) * 100;
    // print("=====ddd $quality");
    // String test = quality.toStringAsFixed(0);
    // int imgQuality = int.parse(test);
    // Uint8List uint8File = await testComporessList(file, 50);
    // print("==After compress 2mb to 6mb" + uint8File.lengthInBytes.toString());
    // print("==File path " + File.fromRawPath(uint8File).toString());
    // return File.fromRawPath(uint8File);
    print("-----$file");
    return file;
    // return compressFile(file, quality);
  } else {
    return file;
  }

  // return file;
}

Future<CroppedFile?> _cropImage(File imageToCrop, BuildContext context) async {
  final CroppedFile? croppedImage = await ImageCropper().cropImage(
    sourcePath: imageToCrop.path,
    cropStyle: CropStyle.circle,
    aspectRatioPresets: [
      CropAspectRatioPreset.square,
      CropAspectRatioPreset.ratio3x2,
      CropAspectRatioPreset.original,
      CropAspectRatioPreset.ratio4x3,
      CropAspectRatioPreset.ratio16x9
    ],
    uiSettings: [
      AndroidUiSettings(
          toolbarTitle: 'Crop Image',
          toolbarColor: Colors.deepOrange,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: false),
      IOSUiSettings(
        title: 'Crop Image',
      ),
      WebUiSettings(
        context: context,
      ),
    ],
  );
  return croppedImage;
}

Future<File?> pickImage(ImageSource source,
    {CameraDevice preferredCameraDevice = CameraDevice.rear}) async {
  // SnackbarService _snackbarService = locator<SnackbarService>();

  // ignore: deprecated_member_use
  XFile? imagePickedFile = await ImagePicker().pickImage(
      source: source,
      preferredCameraDevice: preferredCameraDevice,
      imageQuality: 50,
      maxHeight: 1280,
      maxWidth: 960);
  if (imagePickedFile != null) {
    // Uint8List uint8File =
    //     await testComporessList(File(imagePickedFile.path), 50);
    // Uint8List testunit = await imagePickedFile.readAsBytes();
    // print("== Before compress" + testunit.lengthInBytes.toString());
    // print("== After compress" + uint8File.lengthInBytes.toString());

    // final tempDir = await getTemporaryDirectory();
    // final ffile = await new File('${tempDir.path}/image.jpg').create();
    // ffile.writeAsBytesSync(uint8File);
    // if (await File(imagePickedFile.path).length() >= 2097152)
    //   return _snackbarService.showCustomSnackBar(
    //       message: "The File may not be greater than 2 MB.");
    // else
    // print("imagepath " + imagePickedFile.path);
    return File(imagePickedFile.path);

    // print("==Non compress image" + File(imagePickedFile.path).toString());
    // return File.fromRawPath(uint8File);
  } else {
    return null;
  }
}

// Future<File> compressFile(File file, double qlt) async {
//   final filePath = file.absolute.path;
//   // Create output file path
//   // eg:- "Volume/VM/abcd_out.jpeg"
//   final lastIndex = filePath.lastIndexOf(new RegExp(r'.jp'));
//   final splitted = filePath.substring(0, (lastIndex));
//   final outPath = "${splitted}_out${filePath.substring(lastIndex)}";
//   var result = await FlutterImageCompress.compressAndGetFile(
//     file.absolute.path,
//     outPath,
//     quality: qlt.toInt(),
//   );
//   print("Before==" + file.lengthSync().toString());
//   print("After==" + result.lengthSync().toString());
//   return result;
// }

// Future<Uint8List> testComporessList(File file, int quality) async {
//   var result = await FlutterImageCompress.compressWithFile(
//     file.path,
//     minHeight: 300,
//     minWidth: 300,
//     quality: quality,
//   );
//   print('compressedimagesize: ${result.lengthInBytes}-${result.length}');
//   return result;
// }

Future<File?> pdfPicker() async {
  // ignore: prefer_final_locals
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: [
      'pdf',
    ],
  );
  if (result != null) {
    return File(result.files.first.path ?? "");
  } else {
    return null;
  }
}
