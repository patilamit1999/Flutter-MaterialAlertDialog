import 'package:flutter/material.dart';


class MaterialAlertDialog extends StatelessWidget {
  final double height;
  final String title;
  final String message;
  final Function onPresedPositiveButton;
final Function onPresedNegativeButton;
   const MaterialAlertDialog({
    Key key,
    this.height = 200.0,
    @required this.message,
    @required this.onPresedPositiveButton,
    @required this.onPresedNegativeButton,
    @required this.title,
  }) : super(key: key);


  @override
  Widget build(BuildContext context){
   
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );  
  }
  
  _buildChild(BuildContext context) => Container( 
    height: 200,
    decoration: BoxDecoration(

      color: Colors.white,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(18))
    ),
    child: Column(
      children: <Widget>[
        
        SizedBox(height:20),
        Text(title,style: TextStyle(fontSize:20,color:Colors.black,fontWeight: FontWeight.bold),),
        SizedBox(height:15),
        Padding(
          padding: const EdgeInsets.only(right: 10,left: 10),
          child: Text(message,style: TextStyle(fontSize:15,color:Colors.black),textAlign:TextAlign.center,),
        ),
        SizedBox(height:34),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            OutlineButton(onPressed: (){
              onPresedNegativeButton();
              
            }, child: Text('No'),
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),),
            SizedBox(width:20),
            RaisedButton(onPressed: (){
              onPresedPositiveButton();
            }, 
            child: Text('Yes',style: TextStyle(color:Colors.white)),
            color:Colors.redAccent),
          ],
        )
      ],
    ),
  );
}

  