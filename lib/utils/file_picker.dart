import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:ondemand/core/constants.dart';
import 'package:ondemand/core/endpoints.dart';
import 'package:ondemand/utils/utils.dart';

//! step-1 // pick img from gallery or camera
Future<File?> openPickImageModalSheet(BuildContext context) async {
  File? file;
  await showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      decoration: const BoxDecoration(
        color: kWhite,
      ),
      height: 238,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: AppSizes.p16, top: AppSizes.p16),
            child: Text(
              "Choose From",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
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
                  file = image;
                  // file = image;
                }
              });
              Navigator.pop(context);
            },
            child: Row(
              children: [
                const SizedBox(width: AppSizes.p16),
                const Icon(Icons.camera_alt),
                const SizedBox(width: AppSizes.p16),
                Text(
                  "Camera",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 16, color: kBlack),
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
                } else {
                  file = image;
                  // file = image;
                }
              });
              Navigator.pop(context);
            },
            child: Row(
              children: [
                const SizedBox(width: AppSizes.p16),
                const Icon(Icons.image),
                const SizedBox(width: AppSizes.p16),
                Text(
                  "Gallery",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 16, color: kBlack),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: AppSizes.p16,
          ),
        ],
      ),
    ),
  );
  final Uint8List? testunit = await file?.readAsBytes();
  if (testunit!.lengthInBytes >= 500000) {
    return file;
  } else {
    return file;
  }
}

Future<File?> openPickVideoModalSheet(BuildContext context) async {
  File? file;
  await showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      height: 200.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          const Text(
            "Pick a Video",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: primaryColor,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          MaterialButton(
            child: const Text(
              "Use camera",
            ),
            onPressed: () async {
              await pickVideo(ImageSource.camera).then((video) {
                if (video == null) {
                  // _snackbarService.showSnackbar(
                  //     message: "Image capture failed");
                } else {
                  file = video;
                }
              });
              Navigator.pop(context);
            },
          ),
          MaterialButton(
            child: const Text(
              "Use Gallery",
            ),
            onPressed: () async {
              await pickVideo(ImageSource.gallery).then((video) {
                if (video == null) {
                  // _snackbarService.showSnackbar(
                  //     message: "Image capture failed");
                } else {
                  file = video;
                }
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
  );
  return file;
}

Future<File?> pickImage(
  ImageSource source, {
  CameraDevice preferredCameraDevice = CameraDevice.rear,
}) async {
  // SnackbarService _snackbarService = locator<SnackbarService>();

  final XFile? imagePickedFile = await ImagePicker().pickImage(
    source: source,
    preferredCameraDevice: preferredCameraDevice,
    imageQuality: 50,
    maxHeight: 1280,
    maxWidth: 960,
  );
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

Future<File?> pickVideo(ImageSource source) async {
  // ignore: prefer_final_locals
  XFile? imagePickedFile = await ImagePicker()
      .pickVideo(source: source, maxDuration: const Duration(seconds: 30));
  if (imagePickedFile != null) {
    return File(imagePickedFile.path);
  } else {
    return null;
  }
}

//! step-2 // upload img to server
Future<String> uploadImage(File? picture) async {
  if (picture == null) {
    return "";
  }
  final url = Uri.parse(
    "${AppConstants.baseUrl}$uplodePicEndpoint",
  ); // Replace with your actual API endpoint.

  final request = http.MultipartRequest('POST', url);
  request.files.add(await http.MultipartFile.fromPath('file', picture.path));

  try {
    final response = await request.send();
    if (response.statusCode == 200) {
      final responseText = await response.stream.bytesToString();
      // ignore: avoid_dynamic_calls
      final imageUrl = jsonDecode(responseText)["file"];
      Fluttertoast.showToast(msg: "Image uploaded successfully");
      return imageUrl;
    } else {
      return "";
    }
  } catch (e) {
    Fluttertoast.showToast(msg: e.toString());
    return "";
  }
}
