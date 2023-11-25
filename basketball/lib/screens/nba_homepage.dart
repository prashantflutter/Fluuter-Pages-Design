import 'package:basketball/controller/team_controller.dart';
import 'package:basketball/model_class/team_model.dart';
import 'package:basketball/screens/score_of_team_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class NBAHomePage extends StatefulWidget {
  const NBAHomePage({super.key});

  @override
  State<NBAHomePage> createState() => _NBAHomePageState();
}

class _NBAHomePageState extends State<NBAHomePage> {


  final teamController = Get.put(TeamController());
  TextEditingController teamName = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("NBA Home Page",style: TextStyle(color: Colors.white)),backgroundColor: Colors.blue,),
      body: GetBuilder<TeamController>(builder: (_){
        return teamController.isLoading?Center(child: CircularProgressIndicator(),):Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30,),
              Text("NBA Score Tracking App",style: TextStyle(fontSize: 23,color: Colors.black),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 180,
                      height: 55,
                      child: TextField(
                        controller:teamName,
                        onChanged: (value){

                        },
                        decoration: InputDecoration(
                          hintText: "Search Team",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,width: 2,
                            ),
                          ),
                        ),
                      )),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text("Track Team",style: TextStyle(fontSize: 18,color: Colors.white),),),
                ],
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                  itemCount: teamController.dataList.length,
                    itemBuilder: (context,index){
                    var mIndex = teamController.dataList[index];
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ScoreTeamPage()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.blue,
                          width: 1.5,
                        ),
                      ),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(mIndex.fullName.toString(),style: TextStyle(fontSize: 20),),
                          SizedBox(height: 5,),
                          Text(mIndex.division.toString(),style: TextStyle(fontSize: 15),),
                          Row(
                            children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Result of Past 12 Days :".toString(),style: TextStyle(fontSize: 15),),
                                Text("City :${mIndex.city.toString()}",style: TextStyle(fontSize: 15),),
                                Text("Abbreviation :${mIndex.abbreviation.toString()}",style: TextStyle(fontSize: 15),),
                                Row(children: [
                                ],),
                              ],
                            ),
                            Expanded(child: Icon(Icons.sports_basketball,size: 150,)),
                          ],),



                        ],
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        );
      }),
    );
  }

  // _searchBar() {
  //   return Padding(
  //     padding: EdgeInsets.all(12.0),
  //     child: TextField(
  //       autofocus: false,
  //       onChanged: (searchText) {
  //         searchText = searchText.toLowerCase();
  //         setState(() {
  //           _usersDisplay = _users.where((u) {
  //             var fName = u.firstName.toLowerCase();
  //             var lName = u.lastName.toLowerCase();
  //             var job = u.job.toLowerCase();
  //             return fName.contains(searchText) || lName.contains(searchText) || job.contains(searchText);
  //           }).toList();
  //         });
  //       },
  //       decoration: InputDecoration(
  //         border: OutlineInputBorder(),
  //         prefixIcon: Icon(Icons.search),
  //         hintText: 'Search Users',
  //       ),
  //     ),
  //   );
  // }

searchTeam(String teamName){

}
}
