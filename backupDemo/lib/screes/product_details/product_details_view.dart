import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/api_string.dart';
import '../../constant/app_colors.dart';
import '../../constant/app_string.dart';

class MyWebsite extends StatefulWidget {
  final String baseURl;
  final String uri;
  final String title;
  const MyWebsite({Key? key, required this.uri, required this.title, required this.baseURl}) : super(key: key);

  @override
  State<MyWebsite> createState() => _MyWebsiteState();
}

class _MyWebsiteState extends State<MyWebsite> {

  double _progress = 0;
  late InAppWebViewController  inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: ()async{

        var isLastPage = await inAppWebViewController.canGoBack();

        if(isLastPage){
          inAppWebViewController.goBack();
          return false;
        }

        return true;
      },
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                width: size.width,
                height: size.width * 0.2,
                color: primeColor,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20,),
                    IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: Icon(Icons.arrow_back_ios,size: 25,color: Colors.white,)),
                    Container(
                      width: size.width-100,
                        child: Text(widget.title,maxLines: 2,textAlign: TextAlign.start,style: GoogleFonts.poppins(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w900))
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    InAppWebView(
                      initialUrlRequest: URLRequest(
                          url: WebUri.uri( Uri.parse(widget.baseURl+widget.uri))
                      ),
                      onWebViewCreated: (InAppWebViewController controller){
                        inAppWebViewController = controller;
                      },
                      onProgressChanged: (InAppWebViewController controller , int progress){
                        setState(() {
                          _progress = progress / 100;
                        });
                      },
                    ),
                    _progress < 1 ? Container(
                      child: LinearProgressIndicator(
                        value: _progress,
                        color: yellowColor,
                      ),
                    ):SizedBox()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}