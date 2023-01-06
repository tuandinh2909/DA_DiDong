import 'package:flutter/material.dart';
import 'package:antdesign_icons/antdesign_icons.dart';

class setting_page extends StatefulWidget {
  const setting_page({super.key});

  @override
  State<setting_page> createState() => _setting_pageState();
}

class _setting_pageState extends State<setting_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [           
            IconButton(onPressed: (){}, icon: Image(image: AssetImage('images/1.png'),),iconSize: 70,),
            Text('Settings',style: TextStyle(fontSize: 25),),
          ],
        ),
        
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Align(
            
            alignment: Alignment.center,
            child:SizedBox(
            height: 115,
            width: 115,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                  radius: 115,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/avatar.png'),
                    radius:56 ,                
                  ),                 
                ),
                Positioned(
                  bottom: 0,
                  right: -2,
                  child: SizedBox(                 
                  width: 36,
                  height: 36,
                  child: FloatingActionButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    onPressed: (){},
                    child: Image(image: AssetImage('images/camera.jpg')),
                  ),
                ),)                
              ],
            ),
          ),         
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Nhóm 6',style: TextStyle(fontSize: 20,fontFamily: 'Nunito',),),
            IconButton(onPressed: (){}, icon: Icon(AntIcons.editOutlined)),
            ],

          ),

          Card(
            elevation: 4.0,
            margin: EdgeInsets.fromLTRB(32, 8, 32, 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.lock,color: Colors.deepPurpleAccent,size: 30,),
                  title: Text('Đổi mật khẩu'),
                  trailing:IconButton(onPressed: (){}, icon:Icon(Icons.keyboard_arrow_right) )
                ),
                Container(
                  height: 1.0,
                  width: double.infinity,
                  color: Color.fromARGB(255, 192, 189, 189),
                ),
                ListTile(
                  leading: Icon(Icons.language,color: Colors.deepPurpleAccent,size: 30,),
                  title: Text('Thay đổi ngôn ngữ'),
                  trailing:IconButton(onPressed: (){}, icon:Icon(Icons.keyboard_arrow_right) )
                ),            
              ],
            ),
          ),
         Text('  Cài đặt âm thanh                                                ',
         style: TextStyle(fontFamily: 'Nuniti',fontSize: 20,color: Colors.deepPurpleAccent,fontWeight: FontWeight.bold),),

        SwitchListTile(value: true, onChanged: (val){},title: Text('        Âm lượng'),),
        SwitchListTile(value: false, onChanged: (val){},title: Text('        Nhận thông báo'),),
        SwitchListTile(value: true, onChanged: (val){},title: Text('        Nhận thông tin cập nhật'),)
          ],
        ),
      ),
    );
  }
}