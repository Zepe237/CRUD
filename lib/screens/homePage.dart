import 'package:crud/constants/colors.dart';
import 'package:crud/controllers/api.dart';
import 'package:crud/screens/add.dart';
import 'package:crud/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:crud/models/food.dart';
import 'package:fluttertoast/fluttertoast.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
FoodAPI food = FoodAPI();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD', style: TextStyle(
          fontWeight: FontWeight.bold ,
          fontSize: 40,
        ),),
      ),
      drawer: Drawer(
        child: Container(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(20)),
              Text('Drawer', style: TextStyle(
                fontWeight: FontWeight.bold ,
                fontSize: 40,
              ),
            ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAppBar(Icons.cancel, Icons.search_off_outlined),
            SizedBox(
              height:8 ,
            ),
            
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width -30,
              height: MediaQuery.of(context).size.height/1.4,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: FutureBuilder<List>(
                future: food.getFood(),
                builder: (context, snapshot){
                  var data = snapshot.data ;
                  print(data);
                  return ListView.builder(itemCount: data?.length, itemBuilder: (context , index){
                    if(!snapshot.hasData){
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return Card(
                      child: Center(
                        child: InkWell(
                          child: ListTile(
                            title: Text(
                              '${data?[index]['title']}',
                              style: TextStyle(
                                fontFamily: 'verdana',
                                fontSize: 13,
                                fontWeight: FontWeight.bold ,
                              ),
                            ),
                            leading: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurpleAccent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${data?[index]['id']}',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                            subtitle: Text(
                              '${data?[index]['description']}',
                              style: TextStyle(
                                fontFamily: 'verdana',
                                fontSize: 13,
                                fontWeight: FontWeight.bold ,
                                color: Colors.grey.withOpacity(0.8) 
                              ),
                            ),
                            trailing: InkWell(
                              child: PopupMenuButton(
                                itemBuilder: (context) => [
                                  PopupMenuItem(
                                    child: ListTile(title: Text('Edit'), leading: Icon(Icons.edit),),
                                    value: 1,
                                  ),
                                  PopupMenuItem(
                                    child: ListTile(title: Text('Delete'), leading: Icon(Icons.delete),),
                                    value: 2,
                                  )
                                ]
                            ),
                              onTap: (){},
                            ),
                            onTap: (){
                              Fluttertoast.showToast(
                                msg: '${data?[index]['id']} est selectioner',
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.green.withOpacity(0.8),
                                textColor: Colors.white,
                                fontSize: 16.0
                            );  
                            },
                          ),
                        ),
                      ),
                    );
                  });
                }
                ),
            ),
            FloatingActionButton(onPressed: (){
              print('bonjour');
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddPage()));
            }, child: Icon(Icons.add),
            ),
          ],
        ),
      ),
      )
    );
    
  }
}