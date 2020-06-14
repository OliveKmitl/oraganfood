import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oraganfood/utility/my_constant.dart';
import 'package:oraganfood/utility/my_style.dart';
import 'package:oraganfood/utility/normal_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddFoodMenu extends StatefulWidget {
  @override
  _AddFoodMenuState createState() => _AddFoodMenuState();
}

class _AddFoodMenuState extends State<AddFoodMenu> {
  String name, price, detail;
  File file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เพิ่มรายการอาหาร'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MyStyle().showTitleH2('รูปภาพอาหาร'),
            groupImage(),
            nameForm(),
            priceForm(),
            detailForm(),
            saveButton(),
          ],
        ),
      ),
    );
  }

  OutlineButton saveButton() {
    return OutlineButton.icon(
      onPressed: () {
        if (file == null) {
          normalDialog(context, 'โปรดเลือกรูปอาหาร');
        } else if (name == null ||
            name.isEmpty ||
            price == null ||
            price.isEmpty ||
            detail == null ||
            detail.isEmpty) {
          normalDialog(context, 'กรุณากรอกทุกช่อง');
        } else {
          uploadAndInsertFood();
        }
      },
      icon: Icon(Icons.save),
      label: Text('บันทึกรายการอาหาร'),
    );
  }

  Future<Null> uploadAndInsertFood() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String idShop = preferences.getString('id');

    String urlUpload = '${MyConstant().domain}/oraganfood/saveFood.php';
    Random randon = Random();
    int i = randon.nextInt(1000000);
    String namefile = 'food$idShop-$i.jpg';
    Map<String, dynamic> map = Map();
    map['file'] = await MultipartFile.fromFile(file.path, filename: namefile);
    FormData formData = FormData.fromMap(map);

    await Dio().post(urlUpload, data: formData).then((value) async{
      String pathImage ='/oraganfood/Food/$namefile';
      print('urlImage = ${MyConstant().domain}$pathImage');

      String urlInsert ='${MyConstant().domain}/oraganfood/addFood.php?isAdd=true&idShop=$idShop&NameFood=$name&Price=$price&Detail=$detail&PathImage=$pathImage';
      await Dio().get(urlInsert).then((value) => Navigator.pop(context),);
    });
  }

  Widget nameForm() => Container(
        width: 250.0,
        child: TextField(
          onChanged: (value) => name = value.trim(),
          decoration: InputDecoration(
            labelText: 'ชื่ออาหาร :',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Widget priceForm() => Container(
        margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
        width: 250.0,
        child: TextField(
          onChanged: (value) => price = value.trim(),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'ราคาอาหาร :',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Widget detailForm() => Container(
        width: 250.0,
        child: TextField(
          onChanged: (value) => detail = value.trim(),
          decoration: InputDecoration(
            labelText: 'รายละเอียดอาหาร :',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Row groupImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.add_a_photo),
          onPressed: () => chooseImage(ImageSource.camera),
        ),
        Container(
          width: 250.0,
          height: 250.0,
          child: file == null
              ? Image.asset('images/myimage.png')
              : Image.file(file),
        ),
        IconButton(
          icon: Icon(Icons.add_photo_alternate),
          onPressed: () => chooseImage(ImageSource.gallery),
        ),
      ],
    );
  }

  Future<Null> chooseImage(ImageSource source) async {
    try {
      var object = await ImagePicker().getImage(
        source: source,
        maxWidth: 800.0,
        maxHeight: 800.0,
      );
      setState(() {
        file = File(object.path);
      });
    } catch (e) {}
  }
}
