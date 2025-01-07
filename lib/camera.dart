import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class Upl extends StatefulWidget {
  const Upl({super.key});

  @override
  State<Upl> createState() => _UplState();
}

class _UplState extends State<Upl> {
  File? _image;
  final ImagePicker picker = ImagePicker();
  Future<void> cameracaptureimage() async {
    final XFile? photo = await picker.pickImage(source: ImageSource.camera,maxHeight:300 ,maxWidth:300 );
    setState(() {
      if (photo != null) {
        _image = File(photo.path);
      } else {
        print('no');
      }
    });
  }
  Future<void> galleryimage() async {
    final XFile? photo = await picker.pickImage(source: ImageSource.gallery,
        imageQuality: 80,
        maxWidth: 300,
        maxHeight: 300);
    setState(() {
      if (photo != null) {
        _image = File(photo.path);
      } else {
        print('no');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          height: 50,
          child: ListTile(
            leading: CircleAvatar(
              radius: 40,
              child: Image.network(
                'https://zenprospect-production.s3.amazonaws.com/uploads/pictures/647f0890310c360001544e6a/picture',
              ),
            ),
            title: Text(
              'RadicalStart',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          height: 800,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: Text(
                    'Upload Picture',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFEEEE),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      )),
                  child: Column(
                  children: [_image == null ? Text("") : Flexible(child: Image.file(_image!,fit: BoxFit.cover,width: 600,height: 600,)),
                    SizedBox(height: 100,),
                  FloatingActionButton( child:Icon(Icons.add,size: 50,color: Colors.white,),backgroundColor: Color(0xFF651FFF),
                      shape: CircleBorder(),onPressed: (){
                    showModalBottomSheet(context: context, builder:(BuildContext context){
                      return Column( mainAxisAlignment:MainAxisAlignment.start,
                        children: [ SizedBox(height: 100,),


                          ElevatedButton(onPressed:cameracaptureimage,
                              child:ListTile(leading: Icon(Icons.camera_alt_outlined,size: 30,),title: Text("Camera"),)),
                          Divider(height: 40,),
                          ElevatedButton(onPressed: galleryimage,
                      child:ListTile(leading: Icon(Icons.photo_size_select_actual_outlined,size:30),title: Text("Gallery"),)),

                        ],);
                    } );
                  })],)

                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
