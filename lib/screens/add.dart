import 'package:crud/constants/colors.dart';
import 'package:crud/controllers/api.dart';
import 'package:crud/screens/add.dart';
import 'package:crud/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:crud/models/food.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddPage extends StatefulWidget {
  const AddPage({ Key? key }) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  FoodAPI food = FoodAPI();
  TextEditingController ctrl1 = new TextEditingController();
  TextEditingController ctrl2 = new TextEditingController();
  TextEditingController ctrl3 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD', style: TextStyle(
          fontWeight: FontWeight.bold ,
          fontSize: 40,
        ),),
      ),
      body:  Container(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAppBar(Icons.cancel, Icons.search_off_outlined),
            SizedBox(
              height:8 ,
            ),
            Expanded(
              child: Container(
                child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10 , right: 25, left: 15, bottom: 0),
                    child: TextFormField(
                      controller: ctrl1,
                      validator: (value){
                       String value = ctrl1.text;
                        if(value.isEmpty){
                          return 'please enter some text';
                        }
                        else{
                          print('$value');
                        }
                      },
                    decoration: InputDecoration(
                      hintText :'Entrer le nom de Votre repas',
                      hintStyle: TextStyle(
                        color: kPrimaryColor,
                      ),
                      fillColor: Colors.grey.withOpacity(1.0),
                      hoverColor: kPrimaryColor,
                      icon: Icon(Icons.title),
                    ),
                  ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10 , right: 25, left: 15, bottom: 0),
                    child: TextFormField(
                      controller: ctrl2,
                      validator: (value){
                       String value = ctrl2.text;
                        if(value.isEmpty){
                          return 'please enter some text';
                        }
                        else{
                          print('$value');
                        }
                      },
                    decoration: InputDecoration(
                      hintText :'Nbr de kilo calorie',
                      hintStyle: TextStyle(
                        color: kPrimaryColor,
                      ),
                      fillColor: Colors.grey.withOpacity(1.0),
                      hoverColor: kPrimaryColor,
                      icon: Icon(Icons.engineering),
                    ),
                  ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10 , right: 25, left: 15, bottom: 0),
                    child: TextFormField(
                      controller: ctrl3,
                      validator: (value){
                       String value = ctrl3.text;
                        if(value.isEmpty){
                          return 'please enter some text';
                        }
                        else{
                          print('$value');
                        }
                      },
                    decoration: InputDecoration(
                      hintText :'Entrer une description',
                      hintStyle: TextStyle(
                        color: kPrimaryColor,
                      ),
                      fillColor: Colors.grey.withOpacity(1.0),
                      hoverColor: kPrimaryColor,
                      icon: Icon(Icons.description),
                    ),
                  ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                    Container(
                      padding: EdgeInsets.all(25),
                      child: ElevatedButton(
                      onPressed: (){
                      setState(() {
                        String title = ctrl1.text.toString() ;
                      String kcal = ctrl2.text;
                      String desc = ctrl3.text.toString() ;
                     
                      food.addFood('$title', '$kcal', '$desc');
                      Fluttertoast.showToast(
                                msg: "Food bien inserer",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.green.withOpacity(0.8),
                                textColor: Colors.white,
                                fontSize: 16.0
                            ); 
                      });
                    },
                      child:Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.send),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Submit')
                      ],
                    )
                    ,
                  )
                    
                  ),
                    )
                  
                  
                ],
              ),)
            )
          ]
         )
        )
    );
  }
}

