import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

import 'AppConstant/appString.dart';

class SearchBarPage extends StatefulWidget {
  const SearchBarPage({super.key});

  @override
  State<SearchBarPage> createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {

  var searchText = '';
  StreamSubscription? connection;
  bool isoffline = false;
  @override
  void initState() {
    connection = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      // whenevery connection status is changed.
      if(result == ConnectivityResult.none){
        //there is no any connection
        setState(() {
          isoffline = true;
        });
      }else if(result == ConnectivityResult.mobile){
        //connection is mobile data network
        setState(() {
          isoffline = false;
        });
      }else if(result == ConnectivityResult.wifi){
        //connection is from wifi
        setState(() {
          isoffline = false;
        });
      }
      // else if(result == ConnectivityResult.ethernet){
      //   //connection is from wired connection
      //   setState(() {
      //     isoffline = false;
      //   });
      // }else if(result == ConnectivityResult.bluetooth){
      //   //connection is from bluetooth threatening
      //   setState(() {
      //     isoffline = false;
      //   });
      // }
    });
    super.initState();
  }

  @override
  void dispose() {
    connection!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('SearchBar',style: TextStyle(color: Colors.white),),
        actions: [
        IconButton(
          onPressed: () {
            // method to show the search bar
            showSearch(
                context: context,
                // delegate to customize the search bar
                delegate: CustomSearchDelegate()
            );
          },
          icon: const Icon(Icons.search,color: Colors.white),
        ),
      ],),
      body:Container(
          alignment: Alignment.center,
          child: Column(
              children:[
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom:30),
                  color: isoffline?Colors.red:Colors.lightGreen,
                  //red color on offline, green on online
                  padding:EdgeInsets.all(10),
                  child: Text(isoffline?"Device is Offline":"Device is Online",
                    style: TextStyle(
                        fontSize: 20, color: Colors.white
                    ),),
                ),

                ElevatedButton(onPressed: () async {
                  var result = await Connectivity().checkConnectivity();
                  if(result == ConnectivityResult.mobile) {
                    print("Internet connection is from Mobile data ${ConnectivityResult.mobile}");
                  }else if(result == ConnectivityResult.wifi) {
                    print("internet connection is from wifi");
                  }else if(result == ConnectivityResult.none){
                    print("No internet connection");
                  }
                },
                    child: Text("Check Internet Connection")
                )
              ]
          )
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {

// Demo list to show querying
  List<String> searchTerms = [
    "Apple",
    "Banana",
    "Mango",
    "Pear",
    "Watermelons",
    "Blueberries",
    "Pineapples",
    "Strawberries"
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in statesList) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return Card(
          child: ListTile(
            title: Text(result),
          ),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in statesList) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}


