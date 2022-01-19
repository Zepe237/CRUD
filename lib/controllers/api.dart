import 'package:crud/models/food.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
class FoodAPI {

   var data = [];
  List results = [];
  String urlList = 'http://192.168.8.100/tp/search.php';

  Future<List> getFood({String? query}) async {
    var url = Uri.parse(urlList);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        data = json.decode(response.body);
        //results = data.map((e) => Userlist.fromJson(e)).toList();
         if (query!= null){
           for(var i = 0; i < data.length; i++){
             print(data[i]['title'] );
             if(data[i]['title'] == query.toString()){
               results.add(data[i]);
             }
             
          }
          data = results;
          print(results);
        }
      } else {
        print("fetch error");
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return data ;
  }
    addFood(String title , String kcal, String desc)async{
      print('addFood est appele');
      String urlAdd = 'http://192.168.8.100/tp/add.php';
      var url = Uri.parse(urlAdd);
      
      var response = await http.post(url,body: {
      'title': title,
      'kcal': kcal,
      'description': desc,
    });
    if(response.statusCode == 200){
       //var data2 = json.decode(response.body);
       print('bien inserer') ;
    }
    print(title);
      print(kcal);
      print(desc);
    }
}