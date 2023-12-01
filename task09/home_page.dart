import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> cityList= ["Ahmedabad", "Surat", "Vadodara", "Rajkot", "Bhavnagar", "Jamnagar", "Gandhinagar", "Junagadh",];
  List<String> places = ["Sabarmati River","Gir National Park","Somnath","Statue of Unity","Sayaji Rao Gaekwad","Dwarka","Akshardham Temple","Western Ghats"];
  List<int> id = [1,2,3,4,5,6];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Set on Serach and set Result"),
      actions: [
        IconButton(onPressed: (){
          showSearch(context: context, delegate: MySearchdelegate());
        }, icon: Icon(Icons.search))
      ],),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: 
            id.length,
            itemBuilder: (context,index){
          return ListTile(
            leading: Icon(Icons.place,color: Colors.red,),
            title: Text(places[index]),
            subtitle: Text(cityList[index]),
            onTap: (){
              print(index);
            },
          );
        }),
      ),
    );
  }
  
  
}

class MySearchdelegate  extends SearchDelegate{

  List<String> cityList= ["Ahmedabad", "Surat", "Vadodara", "Rajkot", "Bhavnagar", "Jamnagar", "Gandhinagar", "Junagadh",];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){
        if(query.isEmpty){
           close(context, null);
        }else{
           query = "";
        }

      }, icon: Icon(Icons.cancel,color: Colors.red,))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
   return IconButton(onPressed: (){
     return close(context, null);
   }, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<int> id = [1,2,3,4,5,6];
    List<String> cityList2 = cityList.where((element) {
      final result = element.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
      itemCount: cityList2.length,
        itemBuilder: (context,index){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListTile(
          leading: Icon(Icons.location_city),
          subtitle: Text(cityList2[index]),
          onTap: (){
            query = cityList2[index];
            showResults(context);
          },
        ),
      );
    });
  }
}
