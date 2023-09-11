import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickers extends StatefulWidget {
  const ImagePickers({super.key});

  @override
  State<ImagePickers> createState() => _ImagePickersState();
}

class _ImagePickersState extends State<ImagePickers> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                openCamera(context);
              });
            }, child: Text("Cam")),
            ElevatedButton(onPressed: (){
              setState(() {
                showModalBottomSheet(
                  context: context,
                  builder: (builder) => bottmSheet(),
                );

                print(imageFile!.path);
              });
            }, child: Text("div")),
            Container(
              child: imageFile==null ?Container():Image.file(imageFile!),
            )
          ],
        ),
      ),
    );
  }

  Future _getFromCamera() async {

    final _picker = ImagePicker();


    PickedFile? pickedFile = await _picker.getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );

    if (pickedFile != null) {
      // File imageFile = File(pickedFile.path);
      final imageTemp = File(pickedFile.path);
      imageFile = imageTemp;
    }
  }

  openCamera(BuildContext context) async {
   await _getFromCamera();
    Navigator.pop(context);
  }

  openGallery(BuildContext context) async{
  await  _getFromGallery();
    Navigator.pop(context);
  }
  Future _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );

    if (pickedFile != null) {
      // File imageFile = File(pickedFile.path);
      final imageTemp = File(pickedFile.path);
      imageFile = imageTemp;
    }
  }
  Widget bottmSheet(){
    return Container(
      decoration:
      BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(60))),
      height: 220,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'changePhoto',
          ),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
              child: Text("openCamera"),

               onPressed: () { openCamera(context); },),
          SizedBox(
            height: 10,
          ),
          Text("or"),
          ElevatedButton(
            child: Text("openCamera"),

            onPressed: () { openGallery(context); },),
        ],
      ),
    );
  }

}
