import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ListviewApp());
}
class ListviewApp extends StatefulWidget {
  const ListviewApp({Key? key}) : super(key: key);

  @override
  State<ListviewApp> createState() => _ListViewAppState();
}
final List<String> a=[
  '星期一',
  '星期二',
  '星期三',
  '星期四',
  '星期五',
  '星期六',
  '星期天',
];
final List<String> c=[
  '穿新衣',
  '肚子餓',
  '去爬山',
  '去考試',
  '去跳舞',
  '去斗六',
  '我忘了',
];
class _ListViewAppState extends State<ListviewApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Listview Example'),
        ),
        body: ListView.separated(
            itemCount: a.length,
            itemBuilder: (context,index){
              return ListTile(
                leading:const Icon(Icons.accessible_forward,size: 60.0),
                title: Text(a[index],style: TextStyle(fontSize: 35.0),),
                subtitle: Text(c[index],style: TextStyle(fontSize: 35.0),),
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('do it',style: TextStyle(fontSize: 25.0),),
                  ));
                  },
              );
              },
          separatorBuilder: (context,index)=>const Divider(),

        ),
      ),
    );
  }
}
