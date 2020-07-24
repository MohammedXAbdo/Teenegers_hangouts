

import 'dart:async';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:googlemaps/Widgets/pickImageDialog.dart';
import 'package:googlemaps/constants.dart';

import 'package:googlemaps/servecies/store.dart';
import 'package:like_button/like_button.dart';
import 'package:provider/provider.dart';
class LocationStack extends StatefulWidget {
  LocationStack({
    Key key,
    @required this.height,
    @required this.width,
    @required this.data,
    @required this.urlLoad,
    @required this.docId,
    @required this.store,

    @required this.liked, this.placeName,
    this.location
  }) : super(key: key);

  final double height;
  final String placeName;
  final double width;
  var data;
  final String urlLoad;
  String docId;
  bool liked;
  final Store store;

  GeoPoint location;

  @override
  _LocationStackState createState() => _LocationStackState();
}


class _LocationStackState extends State<LocationStack> {
 bool isliked = false;
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      isliked=!widget.liked;
    });
  }

 final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height:
          widget.height * 0.25,
          width: widget.width,
          child: FadeInImage(
            image:NetworkImage(widget.data["${constants
                .PlaceImage}"]==null?widget.urlLoad:widget.data["${constants
                .PlaceImage}"])
            ,
            fit: BoxFit.cover,
            placeholder: AssetImage('images/markercover.png'),

          ),
        ),
        Positioned(
          right: widget.width*0.01,
          bottom: widget.height*0.01,
          child: FloatingActionButton(onPressed: (){
            showDialog(context: context
                ,builder: (context)=>AlertDialog(
                  content:pickImageDialog(widget.width,widget.height,widget.docId),
                  title: Text('Choose Cover to this Place'),
                  actions: <Widget>[
                    FlatButton(onPressed: (){
                    }, child: Text('Ok')),
                    FlatButton(onPressed: (){

                      Navigator.pop(context);


                    }, child: Text('Skip'))
                  ],
                )
            );
          },child: Center(
            child: Icon(Icons.camera_enhance,color: Colors.white,),
          ),backgroundColor: constants.primarycolor,),
        ),
        Positioned(
            left: widget.width*0.01,
            bottom: widget.height*0.01,

            child: (
                AvatarGlow(
                  endRadius: 35,
                  child: LikeButton(
                    onTap: (bool isLiked) async{
                      final FirebaseUser user = await _auth.currentUser();
                      final uid = user.uid;
                      print (uid);
                      await widget.store.updateFavouriteHeart(uid, widget.docId, !isLiked,widget.placeName,widget.location);
                      /// send your request here
                      // final bool success= await sendRequest();

                      /// if failed, you can do nothing
                      // return success? !isLiked:isLiked;
//
////                                                                              print(snapshot.data.documents[0][constants.IsFavourite]);
//    print (islike);
                      print(!isLiked);

                      return !isLiked;
                    }
,

                    isLiked:isliked,
                    circleColor:
                    CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                    bubblesColor: BubblesColor(
                      dotPrimaryColor: Color(0xff33b5e5),
                      dotSecondaryColor: Color(0xff0099cc),
                    ),

                  ),
                )

            )
        )
      ],
    );
  }
}