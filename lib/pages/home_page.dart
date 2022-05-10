import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../drawer.dart';
import '../name_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //var myText = "Change My Name";
  //TextEditingController _nameController = new TextEditingController();

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }
  fetchData()async {
    var res = await http.get(Uri.parse(url));
    print(res.body);
    data = jsonDecode(res.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Sample App"),
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body: data !=null ? 
           ListView.builder(itemBuilder: (context,index){
             return ListTile(
               title: Text(data[index]["title"]),
               subtitle: Text("ID : ${data[index]["id"]}"),
               leading: Image.network(data[index]["url"])
             );
           }, itemCount: data.length,)
          : const Center(
               child: CircularProgressIndicator(),
             ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // myText = _nameController.text;
          // setState(() {});
        },
        child: Icon(Icons.send),
      ),
      // body: Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Container(
      //         padding: const EdgeInsets.all(8),
      //         width: 100,
      //         height: 100,
      //         color: Colors.red,
      //         alignment: Alignment.center,
      //       ),
      //       Container(
      //         padding: const EdgeInsets.all(8),
      //         width: 100,
      //         height: 100,
      //         color: Colors.blue,
      //         alignment: Alignment.center,
      //       ),
      //       Container(
      //         padding: const EdgeInsets.all(8),
      //         width: 100,
      //         height: 100,
      //         color: Colors.orange,
      //         alignment: Alignment.center,
      //       )
      //
      //     ],
      //   )
      // )

      // body:Center(
      //   child: Container(
      //     child: const Text(
      //         "Hello World",
      //       textAlign: TextAlign.center,
      //       style: TextStyle(
      //         fontSize: 20,
      //         color: Colors.white,
      //         fontWeight: FontWeight. bold,
      //
      //       ),
      //     ),
      //     width: 100,
      //     height: 100,
      //     //clipBehavior: Clip.antiAlias,
      //     padding: EdgeInsets.all(8),
      //     alignment: Alignment.center,
      //     decoration: BoxDecoration(
      //       color: Colors.red,
      //       //shape: BoxShape.circle,
      //       borderRadius: BorderRadius.circular(10),
      //       gradient: const LinearGradient(
      //         colors: [
      //           Colors.red,
      //           Colors.green
      //         ]
      //       ),
      //       boxShadow: const [
      //         BoxShadow(
      //           color: Colors.grey,
      //           blurRadius: 10
      //         )
      //       ]
      //     ),
      //   ),
      // )
    );
  }
}