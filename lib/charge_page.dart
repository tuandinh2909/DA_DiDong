import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class charge_page extends StatelessWidget {
  const charge_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        iconTheme: IconThemeData(
        color: Colors.deepPurpleAccent, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(AntIcons.starFilled,color: Colors.deepPurpleAccent,),
            
            OutlinedButton(onPressed: (){}, child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                FaIcon(FontAwesomeIcons.crown,color: Colors.yellow,),
                Text(' 300',style: TextStyle(color: Colors.yellow),)
              ],
            )),
            OutlinedButton(onPressed: (){}, child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Icon(Icons.energy_savings_leaf),
                Text(' 150',style: TextStyle(color: Colors.yellow),)
              ],
            )),
          ],
        ),
      ),
    
      
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/2.jpg'),fit: BoxFit.fitWidth),         
        ),

        child: SingleChildScrollView(
          child: Column(
            
            children: [
              Container(      
                 decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/charges.jpg'),fit: BoxFit.fitWidth),         
          ),      
                width: 360,
                height: 150,
                child: OutlinedButton(onPressed: (){},child: Text('Nạp đầu x2 giá trị'),),
              ),
              Row(
                
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/charge.png')),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(60)
                      ),
                    ),
                  padding: EdgeInsets.all(10),
                  child: SizedBox(             
                  width: 130,
                  height: 100,
                  child: OutlinedButton(onPressed: (){},child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [                        
                          FaIcon(FontAwesomeIcons.crown,color: Colors.yellow,size: 30,),
                          Text('100',style:TextStyle(color: Colors.black,fontSize: 20))
                        ],
                      ),
                      Text('10,000 VNĐ',style:TextStyle(color: Colors.black),textAlign: TextAlign.end,)
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.transparent,                   
                    )
                  ),
                  ),
                      ),                   
                  ),
                  Container(
                    margin:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/charge.png')),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(60)
                      ),
                    ),
                  padding: EdgeInsets.all(10),
                  child: SizedBox(             
                 width: 130,
                  height: 100,
                  child: OutlinedButton(onPressed: (){},child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [                        
                          FaIcon(FontAwesomeIcons.crown,color: Colors.yellow,size: 30,),
                          Text('200',style:TextStyle(color: Colors.black,fontSize: 20))
                        ],
                      ),
                      Text('20,000 VNĐ',style:TextStyle(color: Colors.black),textAlign: TextAlign.end,)
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.transparent,                   
                    )
                  ),
                  ),
                      ),                   
                  ),
                  
              
                ],
              ),
              Row(
                
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/charge.png')),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(60)
                      ),
                    ),
                  padding: EdgeInsets.all(10),
                  child: SizedBox(             
                  width: 130,
                  height: 100,
                  child: OutlinedButton(onPressed: (){},child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [                        
                          FaIcon(FontAwesomeIcons.crown,color: Colors.yellow,size: 30,),
                          Text('500',style:TextStyle(color: Colors.black,fontSize: 20))
                        ],
                      ),
                      Text('50,000 VNĐ',style:TextStyle(color: Colors.black),textAlign: TextAlign.end,)
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.transparent,                   
                    )
                  ),
                  ),
                      ),                   
                  ),
                  Container(
                    margin:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/charge.png')),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(60)
                      ),
                    ),
                  padding: EdgeInsets.all(10),
                  child: SizedBox(             
                  width: 130,
                  height: 100,
                  child: OutlinedButton(onPressed: (){},child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [                        
                          FaIcon(FontAwesomeIcons.crown,color: Colors.yellow,size: 30,),
                          Text('1000',style:TextStyle(color: Colors.black,fontSize: 20))
                        ],
                      ),
                      Text('90,000 VNĐ',style:TextStyle(color: Colors.black),textAlign: TextAlign.end,)
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.transparent,                   
                    )
                  ),
                  ),
                      ),                   
                  ),
                  
              
                ],
              ),
              Row(
                
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/charge.png')),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(60)
                      ),
                    ),
                  padding: EdgeInsets.all(10),
                  child: SizedBox(             
                  width: 130,
                  height: 100,
                  child: OutlinedButton(onPressed: (){},child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [                        
                          FaIcon(FontAwesomeIcons.crown,color: Colors.yellow,size: 30,),
                          Text('3000',style:TextStyle(color: Colors.black,fontSize: 20))
                        ],
                      ),
                      Text('250,000 VNĐ',style:TextStyle(color: Colors.black),textAlign: TextAlign.end,)
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.transparent,                   
                    )
                  ),
                  ),
                      ),                   
                  ),
                  Container(
                    margin:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/charge.png')),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(60)
                      ),
                    ),
                  padding: EdgeInsets.all(10),
                  child: SizedBox(             
                  width: 130,
                  height: 100,
                  child: OutlinedButton(onPressed: (){},child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [                        
                          FaIcon(FontAwesomeIcons.crown,color: Colors.yellow,size: 30,),
                          Text('5000',style:TextStyle(color: Colors.black,fontSize: 20))
                        ],
                      ),
                      Text('480,000 VNĐ',style:TextStyle(color: Colors.black),textAlign: TextAlign.end,)
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.transparent,                   
                    )
                  ),
                  ),
                      ),                   
                  ),
                  
              
                ],
              ),
              
            ],
          ),
        ),
      )
    );
  }
}