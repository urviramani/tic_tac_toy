import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  int t=0,o=0,x=0;
  String turn="o",won="";
  List list=List.filled(9,"");
  win()
  {
    if(list[0]=="o"&&list[1]=="o"&&list[2]=="o"||
      list[0]=="o"&&list[1]=="o"&&list[2]=="o"||
      list[0]=="o"&&list[1]=="o"&&list[2]=="o"||
      list[0]=="o"&&list[1]=="o"&&list[2]=="o"||
      list[0]=="o"&&list[1]=="o"&&list[2]=="o"||
      list[0]=="o"&&list[1]=="o"&&list[2]=="o"||
      list[0]=="o"&&list[1]=="o"&&list[2]=="o"||
      list[0]=="o"&&list[1]=="o"&&list[2]=="o"
    )
      {
        won="o";
      }
    else if(list[0]=="x"&&list[1]=="x"&&list[2]=="x"||
             list[0]=="x"&&list[1]=="x"&&list[2]=="x"||
             list[0]=="x"&&list[1]=="x"&&list[2]=="x"||
             list[0]=="x"&&list[1]=="x"&&list[2]=="x"||
             list[0]=="x"&&list[1]=="x"&&list[2]=="x"||
             list[0]=="x"&&list[1]=="x"&&list[2]=="x"||
             list[0]=="x"&&list[1]=="x"&&list[2]=="x"||
             list[0]=="x"&&list[1]=="x"&&list[2]=="x"
           )
      {
        won="x";
      }
  }
  changeval(int pos)
  {
    setState(() {
      if(list[pos]=="o")
        {
          if(t%2==0)
            {
              list[pos]="o";
              o++;
              turn="x";
            }
          else
            {
              list[pos]="x";
              x++;
              turn="o";
            }
          t++;
          win();
        }
      print(t);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
       Expanded(child: Row(
         children: [
           Expanded(child: InkWell(onTap: () {changeval(0);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.red,margin: EdgeInsets.all(5),child: Text("${list[0]}"),),),),
           Expanded(child: InkWell(onTap: () {changeval(1);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.red,margin: EdgeInsets.all(5),child: Text("${list[1]}"),),),),
           Expanded(child: InkWell(onTap: () {changeval(2);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.red,margin: EdgeInsets.all(5),child: Text("${list[2]}"),),),),
         ],
       )),
       Expanded(child: Row(
         children: [
           Expanded(child: InkWell(onTap: () {changeval(3);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.red,margin: EdgeInsets.all(5),child: Text("${list[3]}"),),),),
           Expanded(child: InkWell(onTap: () {changeval(4);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.red,margin: EdgeInsets.all(5),child: Text("${list[4]}"),),),),
           Expanded(child: InkWell(onTap: () {changeval(5);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.red,margin: EdgeInsets.all(5),child: Text("${list[5]}"),),),),
         ],
       )),
       Expanded(child: Row(
         children: [
           Expanded(child: InkWell(onTap: () {changeval(6);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.red,margin: EdgeInsets.all(5),child: Text("${list[6]}"),),),),
           Expanded(child: InkWell(onTap: () {changeval(7);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.red,margin: EdgeInsets.all(5),child: Text("${list[7]}"),),),),
           Expanded(child: InkWell(onTap: () {changeval(8);},child: Container(alignment:Alignment.center,height:double.infinity,color: Colors.red,margin: EdgeInsets.all(5),child: Text("${list[8]}"),),),),
         ],
       )),
         Expanded(child: Column(
           children: [
             Expanded(child: Row(
               children: [
                 Expanded(child: Container(height:double.infinity,color: Colors.indigo,margin: EdgeInsets.fromLTRB(10, 15, 10, 15),alignment:Alignment.center,child: Text("$turn turn",style: TextStyle(color: Colors.white),),)),
                 Expanded(child: Container(height:double.infinity,color: Colors.indigo,margin: EdgeInsets.fromLTRB(10, 15, 10, 15),alignment:Alignment.center,child: Text("x:$x",style: TextStyle(color: Colors.white),),)),
                 Expanded(child: Container(height:double.infinity,color: Colors.indigo,margin: EdgeInsets.fromLTRB(10, 15, 10, 15),alignment:Alignment.center,child: Text("o:$o  ",style: TextStyle(color: Colors.white),),)),
               ],
             )),
             Expanded(child: Container(height:double.infinity,color: Colors.indigo,margin: EdgeInsets.fromLTRB(40, 10, 40, 10),alignment:Alignment.center,child: Text("$won is winner",style: TextStyle(color: Colors.white),),))
           ],
         ))
       ],
     ),
    );
  }
}
