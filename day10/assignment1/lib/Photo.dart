import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Photo extends StatefulWidget {
  const Photo({
    super.key,
    required this.imagePicker,
  });
  final ImagePicker imagePicker;

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  XFile? selectedImg;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () async {
          var image =
              await widget.imagePicker.pickImage(source: ImageSource.gallery);
          if (image != null) {
            selectedImg = image;
            setState(() {});
          }
        },
        onDoubleTap: () {
          if (selectedImg != null) {
            selectedImg = null;
            setState(() {});
          }
        },
        child: Container(
          width: 300,
          height: 150,
          color: Colors.black54,
          child: selectedImg != null
              ? Image.asset(
                  selectedImg!.path,
                  fit: BoxFit.cover,
                )
              : null,
        ),
      ),
    );
  }
}
