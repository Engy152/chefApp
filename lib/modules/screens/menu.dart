import 'package:chef_app/modules/screens/addMeal.dart';
import 'package:chef_app/shared/constant.dart';
import 'package:chef_app/shared/customButtom.dart';
import 'package:chef_app/shared/simpleMethod.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenueScreen extends StatelessWidget {
  const MenueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Column(
              children: [
                customButtom(
                    text: 'Add Meal',
                    function: ()
                    {
                      navigateTo(context, AddMeal());
                    }
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 30),
                  child: Row(
                    children: [
                      Image.asset(
                        width: 70,
                          height: 100,
                          'images/image 45.png',
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kitchen',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),

                          ),
                          Text('Checken hint',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          ),
                          Text('200 LE',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 100,),
                      MaterialButton(
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 40,
                          minWidth: 40,
                          color: deletItemColor,
                          child: Icon(FontAwesomeIcons.xmark,color: Colors.white,size: 30,),
                          onPressed: (){}
                      )
                    ],
                    //Image.asset('images/img.png'),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
