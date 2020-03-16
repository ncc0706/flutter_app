import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellow,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.pexels.com/photos/255501/pexels-photo-255501.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'))),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            logoImage(),
            SizedBox(
              height: 70,
            ),
            loginForm(),
            SizedBox(
              height: 80,
            ),
            loginButton(),
          ],
        ),
      ),
    );
  }

  Widget logoImage() {
    return Container(
      alignment: Alignment.topCenter,
      color: Colors.pink,
      height: 100,
      width: 100,
    );
  }

  @override
  void initState() {
    _usernameController.addListener(() {
      print(_usernameController.text);

      if (_usernameController.text.length > 0) {
        _isShowClear = true;
      } else {
        _isShowClear = false;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
  }

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var _password = ''; //用户名
  var _username = ''; //密码
  var _isShowPwd = false; //是否显示密码
  var _isShowClear = false; //是否显示输入框尾部的清除按钮

  TextEditingController _usernameController = new TextEditingController();

  Widget loginForm() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                  labelText: '用户名',
                  hintText: '请输入手机号码',
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: (_isShowClear)
                      ? IconButton(
                          icon: Icon(
                            Icons.clear,
                          ),
                          onPressed: () {
                            _usernameController.clear();
                          },
                        )
                      : null),
              onSaved: (String value) {
                _username = value;
                print(value);
              },
            )
          ],
        ),
      ),
    );
  }

  Widget loginButton() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      height: 45,
      child: RaisedButton(
        color: Colors.green[300],
        child: Text(
          '登录',
          style: Theme.of(context).primaryTextTheme.headline,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular((10.0)),
        ),
        onPressed: () {
          _formKey.currentState.save();
          print("$_username, $_password");
        },
      ),
    );
  }
}
