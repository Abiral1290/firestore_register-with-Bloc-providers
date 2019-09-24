import 'package:flutter/material.dart';
import 'package:sixteen_app/bloc/login_bloc.dart';

class Home_login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home_login();
  }
}
class _Home_login extends State<Home_login>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Firestore_bloc",
      home: MyHome(),
    );
  }

}

class MyHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHome();
  }

}

class _MyHome extends State<MyHome> {

  final _bloc = Login_bloc();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _bloc.disposr();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Bloc_Register'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          email(),
        shop_name(),
        shop_panno(),
        shop_type(),
        ],
      ),
    );
  }

  Widget email(){
    return StreamBuilder(
      stream: _bloc.shop_email,
        builder: (context, AsyncSnapshot<String> snapshot){
        return TextField(
          onChanged: _bloc.shopemail,
          obscureText: true,
          decoration: InputDecoration(
            hintText: StringConstant.emailHint, errorText: snapshot.error
          ),
        );
        });
  }
  Widget shop_name(){
    return StreamBuilder(
        stream: _bloc.shop_name,
        builder: (context, AsyncSnapshot<String> snapshot){
          return TextField(
            onChanged: _bloc.shopname,
            obscureText: true,
            decoration: InputDecoration(
                hintText: StringConstant.nameHint, errorText: snapshot.error
            ),
          );
        });
  }
  Widget shop_panno(){
    return StreamBuilder(
        stream: _bloc.shop_panno,
        builder: (context, AsyncSnapshot<String> snapshot){
          return TextField(
            onChanged: _bloc.shoppnno,
            obscureText: true,
            decoration: InputDecoration(
                hintText: StringConstant.pannoHint, errorText: snapshot.error
            ),
          );
        });
  }
  Widget shop_type(){
    return StreamBuilder(
      stream: _bloc.shop_type,
        builder:(context, AsyncSnapshot<String> snapshot){
      return TextField(
        onChanged: _bloc.shoptype,
        obscureText: true,
        decoration: InputDecoration(
          hintText: StringConstant.typehint, errorText: snapshot.error
        ),
      );
    });
  }
}