import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerWidget());
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color:Colors.black54,
                        blurRadius: 6.0,
                        offset: Offset(5, 5),
                        blurStyle: BlurStyle.normal,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color:Colors.black54,
                        blurRadius: 6.0,
                        offset: Offset(-5, -5),
                        blurStyle: BlurStyle.normal,
                        spreadRadius: 1,
                      ),
                    ]
                ),

                //=========================Give Border =================================
                // border: Border.all(
                //   color: Color.fromRGBO(179, 1, 22, 0.9),
                //   width: 2,
                // ),


              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
              child:Container(
                height: 200,
                width: 200,
                decoration:const BoxDecoration(
                  color: Colors.brown,
                  //===========================Add border only======================
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(5),
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  //====================Add Image in container==========================
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
                  ),
                ),

                child: Text('A container widget is same as <div> tag in html. If this widget does not contain any child widget, it will fill the whole area on the screen automatically.'),
              ) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

