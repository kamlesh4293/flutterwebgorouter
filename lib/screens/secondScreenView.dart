import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondScreenView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Go Flutter'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.black12,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      context.go('/first');
                    },
                    child: Container(
                      child: Text('First Screen'),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      context.go('/second');
                    },
                    child: Container(
                      child: Text('Second Screen'),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      context.go('/third');
                    },
                    child: Container(
                      child: Text('Third Screen'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container(child: Center(child: Text('Second Screen'),),))
          ],
        ),
      ),
    );
  }


}