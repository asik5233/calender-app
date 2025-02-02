import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const myapp());

}
class myapp extends StatelessWidget{
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home:HomeActivity());

  }
}
class HomeActivity extends StatefulWidget{
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  //DateTime? datePicked;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
    title:Text('hey welcome') ,
    centerTitle: true,

),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('select date',style: TextStyle(fontSize: 25),) ,
            ElevatedButton(onPressed:() async {
              DateTime? datePicked= await showDatePicker(
                  context: context,
                  //initialDate: DateTime.now(),
                  firstDate:DateTime(2005),
                  lastDate:DateTime(2025));
              if(datePicked!=null){

                print('Date selected:${datePicked.day}-${datePicked.month}-${datePicked.year}');
              }



            }, child: Text('show'))

          ],


        ),
      )


    );


  }
}