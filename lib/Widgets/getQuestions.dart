import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:googlemaps/Provider/AddFlagProvider.dart';
import 'package:googlemaps/constants.dart';
import 'package:provider/provider.dart';

class getQuestions extends StatefulWidget {
  const getQuestions({
    Key key,
    @required this.width,
    @required this.height,
    this.answer1,
    this.answer2,
    this.answer3,
    this.answer4,
    this.question1, this.answer5, this.question2, this.answer6, this.answer7, this.answer8, this.answer9, this.question3, this.answer10, this.answer11, this.answer12,
  }) : super(key: key);

  final double width;
  final double height;
  final String answer1;
  final String question1;
  final String answer2;
  final String answer3;
  final String answer4;
  final String answer5;
  final String question2;
  final String answer6;
  final String answer7;
  final String answer8;
  final String answer9;
  final String question3;
  final String answer10;
  final String answer11;
  final String answer12;


  @override
  _getQuestionsState createState() => _getQuestionsState();
}

class _getQuestionsState extends State<getQuestions> {

  int groupvalue1;
  int groupvalue2;
  int groupvalue3;
  @override
  Widget build(BuildContext context) {
    final addflagprovider = Provider.of<Addflagprovider>(context);

    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: constants.whitecolor,
        ),
        width: widget.width * 0.9,
        height: widget.height * 0.65,
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical:10 ),
              decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
                      height: widget.height * 0.3,
                      width: widget.width * 0.9,
                      child: Column(
                        children: <Widget>[
                          Center(
                            child: Text(
                              widget.question1,
                              style: TextStyle(fontFamily: 'font'),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: widget.width * 0.5,
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        activeColor: constants.primarycolor,
                                        value: 1,
                                        groupValue: groupvalue1,
                                        onChanged: (int val) {
                                          changeval(val);
                                          addflagprovider.question1Result(
                                              widget.answer1);
                                        }),
                                    AutoSizeText(
                                      widget.answer1,
                                      minFontSize: 5,
                                      maxFontSize: 10,
                                      maxLines: 1,
                                      style: TextStyle(fontFamily: 'font'),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        activeColor: constants.primarycolor,
                                        value: 2,
                                        groupValue: groupvalue1,
                                        onChanged: (int val) {
                                          changeval(val);
                                          addflagprovider.question1Result(
                                              widget.answer2);
                                        }),
                                    AutoSizeText(
                                      widget.answer2,
                                      minFontSize: 5,
                                      maxFontSize: 10,
                                      maxLines: 1,
                                      style: TextStyle(fontFamily: 'font'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: widget.width * 0.5,
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        activeColor: constants.primarycolor,
                                        value: 3,
                                        groupValue: groupvalue1,
                                        onChanged: (int val) {
                                          changeval(val);
                                          addflagprovider.question1Result(
                                              widget.answer3);
                                        }),
                                    AutoSizeText(
                                      widget.answer3,
                                      minFontSize: 5,
                                      maxFontSize: 10,
                                      maxLines: 1,
                                      style: TextStyle(fontFamily: 'font'),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        activeColor: constants.primarycolor,
                                        value: 4,
                                        groupValue: groupvalue1,
                                        onChanged: (int val) {
                                          changeval(val);
                                          addflagprovider.question1Result(
                                              widget.answer4);
                                        }),
                                    AutoSizeText(
                                      widget.answer4,
                                      minFontSize: 5,
                                      maxFontSize: 10,
                                      maxLines: 1,
                                      style: TextStyle(fontFamily: 'font'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ))),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical:10 ),
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.grey))),
                      height: widget.height * 0.3,
                      width: widget.width * 0.9,
                      child: Column(
                        children: <Widget>[
                          Center(
                            child: Text(
                              widget.question2,
                              style: TextStyle(fontFamily: 'font'),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: widget.width * 0.5,
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        activeColor: constants.primarycolor,
                                        value: 5,
                                        groupValue: groupvalue2,
                                        onChanged: (int val) {
                                          changeval(val);
                                          addflagprovider.question2Result(
                                              widget.answer5);
                                        }),
                                    AutoSizeText(
                                      widget.answer5,
                                      minFontSize: 5,
                                      maxFontSize: 10,
                                      maxLines: 1,
                                      style: TextStyle(fontFamily: 'font'),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        activeColor: constants.primarycolor,
                                        value: 6,
                                        groupValue: groupvalue2,
                                        onChanged: (int val) {
                                          changeval(val);
                                          addflagprovider.question2Result(
                                              widget.answer6);
                                        }),
                                    AutoSizeText(
                                      widget.answer6,
                                      minFontSize: 5,
                                      maxFontSize: 10,
                                      maxLines: 1,
                                      style: TextStyle(fontFamily: 'font'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: widget.width * 0.5,
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        activeColor: constants.primarycolor,
                                        value: 7,
                                        groupValue: groupvalue2,
                                        onChanged: (int val) {
                                          changeval(val);
                                          addflagprovider.question2Result(
                                              widget.answer7);
                                        }),
                                    AutoSizeText(
                                      widget.answer7,
                                      minFontSize: 5,
                                      maxFontSize: 10,
                                      maxLines: 1,
                                      style: TextStyle(fontFamily: 'font'),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        activeColor: constants.primarycolor,
                                        value: 8,
                                        groupValue: groupvalue2,
                                        onChanged: (int val) {
                                          changeval(val);
                                          addflagprovider.question2Result(
                                              widget.answer8);
                                        }),
                                    AutoSizeText(
                                      widget.answer8,
                                      minFontSize: 5,
                                      maxFontSize: 10,
                                      maxLines: 1,
                                      style: TextStyle(fontFamily: 'font'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ))),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical:10 ),

                      height: widget.height * 0.3,
                      width: widget.width * 0.9,
                      child: Column(
                        children: <Widget>[
                          Center(
                            child: Text(
                              widget.question2,
                              style: TextStyle(fontFamily: 'font'),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: widget.width * 0.5,
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        activeColor: constants.primarycolor,
                                        value: 9,
                                        groupValue: groupvalue3,
                                        onChanged: (int val) {
                                          changeval(val);
                                          addflagprovider.question3Result(
                                              widget.answer9);
                                        }),
                                    AutoSizeText(
                                      widget.answer9,
                                      minFontSize: 5,
                                      maxFontSize: 10,
                                      maxLines: 1,
                                      style: TextStyle(fontFamily: 'font'),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        activeColor: constants.primarycolor,
                                        value: 10,
                                        groupValue: groupvalue3,
                                        onChanged: (int val) {
                                          changeval(val);
                                          addflagprovider.question3Result(
                                              widget.answer10);
                                        }),
                                    AutoSizeText(
                                      widget.answer10,
                                      minFontSize: 5,
                                      maxFontSize: 10,
                                      maxLines: 1,
                                      style: TextStyle(fontFamily: 'font'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: widget.width * 0.5,
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        activeColor: constants.primarycolor,
                                        value: 11,
                                        groupValue: groupvalue3,
                                        onChanged: (int val) {
                                          changeval(val);
                                          addflagprovider.question3Result(
                                              widget.answer11);
                                        }),
                                    AutoSizeText(
                                      widget.answer11,
                                      minFontSize: 5,
                                      maxFontSize: 10,
                                      maxLines: 1,
                                      style: TextStyle(fontFamily: 'font'),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                        activeColor: constants.primarycolor,
                                        value: 12,
                                        groupValue: groupvalue3,
                                        onChanged: (int val) {
                                          changeval(val);
                                          addflagprovider.question3Result(
                                              widget.answer12);
                                        }),
                                    AutoSizeText(
                                      widget.answer12,
                                      minFontSize: 5,
                                      maxFontSize: 10,
                                      maxLines: 1,
                                      style: TextStyle(fontFamily: 'font'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      )))
            ],
          ),
        ));


  }

  void changeval(int val) {
    switch (val) {
      case 1:
        setState(() {
          groupvalue1 = val;
        });
        break;
      case 2:
        setState(() {
          groupvalue1 = val;
        });
        break;
      case 3:
        setState(() {
          groupvalue1 = val;
        });
        break;
      case 4:
        setState(() {
          groupvalue1 = val;
        });
        break;
      case 5:
        setState(() {
          groupvalue2 = val;
        });
        break;
      case 6:
        setState(() {
          groupvalue2 = val;
        });
        break;
      case 7:
        setState(() {
          groupvalue2 = val;
        });
        break;
      case 8:
        setState(() {
          groupvalue2 = val;
        });
        break;
      case 9:
        setState(() {
          groupvalue3 = val;
        });
        break;
      case 10:
        setState(() {
          groupvalue3 = val;
        });
        break;
      case 11:
        setState(() {
          groupvalue3 = val;
        });
        break;
      case 12:
        setState(() {
          groupvalue3 = val;
        });
        break;

    }
  }
}
