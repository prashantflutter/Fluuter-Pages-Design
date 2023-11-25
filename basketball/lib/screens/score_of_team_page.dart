import 'package:basketball/controller/game_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ScoreTeamPage extends StatefulWidget {
  const ScoreTeamPage({super.key});

  @override
  State<ScoreTeamPage> createState() => _ScoreTeamPageState();
}

class _ScoreTeamPageState extends State<ScoreTeamPage> {

  final gameController = Get.put(GameController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){ Navigator.of(context).pop();}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title:Text("Score Of Team Page",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),
      body: GetBuilder<GameController>(builder: (_){
        return Container(
          child: ListView.builder(
            itemCount: gameController.scoreListData.length,
              itemBuilder: (context,index){
              var mIndex = gameController.scoreListData[index];
            return Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.blue,
                  width: 1.5,
                ),
              ),
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Home Team",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                          SizedBox(width: 15,),
                          Text("Score",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                       children: [
                         Text(mIndex.homeTeam!.fullName.toString().toString(),style: TextStyle(fontSize: 18),),
                         SizedBox(width: 15,),
                         Text(mIndex.homeTeamScore.toString(),style: TextStyle(fontSize: 18),),

                       ],
                     ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Visitor Team",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                          SizedBox(width: 15,),
                          Text("Score",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text(mIndex.visitorTeam!.fullName.toString().toString(),style: TextStyle(fontSize: 20),),
                          SizedBox(width: 15,),
                          Text(mIndex.visitorTeamScore.toString(),style: TextStyle(fontSize: 20),),

                        ],
                      ),
                    ],
                  ),
                  Expanded(child: Icon(Icons.sports_handball,size: 50,))
                ],
              ),
            );
          }),
        );
      },),
    );
  }
}
