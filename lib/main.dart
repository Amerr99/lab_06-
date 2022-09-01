import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List image=["1.webp","2.jfif","3.jpg","4.jpg"];


List price=["50","60","70","20"];
List salesPrice =["35","45","55","10"];
List clothes= ["Shirt","Shoes","Skirt","Cap"];
  List added =["","","",""];
  List liked =["","","",""];
 String add="Added to cart";
String like ="I like it";
  List colorNumber = ["One","Two","Three","Four"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(),
        body: Container(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int i) {
              return Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(gradient: LinearGradient(colors :[Colors.grey,Colors.white,Colors.pink]),),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children:[
                  Divider(), 
                  ElevatedButton.icon(onPressed: (() {
                    setState(() {
                      added[i]=add;
                      
                    });
                  }),
                  label: Text("Add to Cart"),
                  icon: Icon(Icons.add),),
                
                ListTile(
                  isThreeLine: true,
                  contentPadding: EdgeInsets.all(10),
                  

                    title: Text("${clothes[i]} \n ${added[i]} \n ${liked[i]}",style: TextStyle(color: Colors.purple,fontSize: 24,fontWeight: FontWeight.bold), ),
                    subtitle: Row( children:[ Text("${price[i]}",style:TextStyle(decoration: TextDecoration.lineThrough,color: Colors.green,fontSize: 24),), 
                    SizedBox(width: 20,),
                    Text("${salesPrice[i]}",style: TextStyle(color: Colors.orange,fontSize: 24),)
                    ]),
                    leading: Image(image: AssetImage("images/${image[i]}"),),
                    trailing: IconButton(onPressed: (
                  (() {
                    setState(() {
                      liked[i]=like;

                    });
                  }
                  ) 
                    ),icon: Icon(Icons.thumb_up,color: Colors.blue,)),
                  )]),
              );
              
            },
            
          ),
        ),
      ),
    );
  }
}
