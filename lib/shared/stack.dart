import 'dart:io';

import 'package:chef_app/cubit/loginCubit/LoginCubit.dart';
import 'package:chef_app/shared/constant.dart';
import 'package:flutter/material.dart';

class stackWidget extends StatelessWidget {
  const stackWidget({
    super.key,
    required this.image,
    required this.getimage,

  });


  final File image;
  final Future<void> getimage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        (image == null) ? Container(
          width: 130,
          height: 130,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                    'images/person.avif',
                  ),
                  fit: BoxFit.cover)
          ),
        ) : ClipOval(
            child: Image.file(
              image,
              height: 100,
              width: 100,
              fit: BoxFit.cover,)
        ),
        IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: (){
            getimage;
          },
          icon: Container(
            height: 30,
            width: 30,
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              color: mainColor,
            ),
            child: const Icon(Icons.edit, color: Colors.white,),
          ),
        ),
      ],
    );
  }
}