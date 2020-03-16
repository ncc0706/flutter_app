import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// 参考
// https://blog.csdn.net/ljh910329/article/details/95471566

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _usernameFocus = new FocusNode();
  var _passwordFocus = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellow,
      body: GestureDetector(
        onTap: () {
          _usernameFocus.unfocus();
          debugPrint('click blank area.');
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/pexels-photo-255501.jpeg'),
                colorFilter:
                    ColorFilter.mode(Colors.amber[100], BlendMode.dstIn)),
          ),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 0,
              ),
              // logoImage(),
              SizedBox(
                height: 70,
              ),
              loginForm(),
              SizedBox(
                height: 80,
              ),
              loginButton(),
              SizedBox(
                height: 30,
              ),
              thirdLogin(),

              SizedBox(
                height: 15,
              ),

              bottomArea(),
            ],
          ),
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
    // 焦点事件
    _usernameFocus.addListener(_focusListener);

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

  Future _focusListener() async {
    if (_usernameFocus.hasFocus) {
      print('username focus.');
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _usernameFocus.removeListener(_focusListener);
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
          style: TextStyle(fontSize: 22, color: Colors.blueGrey),
          // style: Theme.of(context).primaryTextTheme.headline,
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

  Widget thirdLogin() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 80,
                height: 1.0,
                color: Colors.purple,
              ),
              Text('第三方登录'),
              Container(
                width: 80,
                height: 1.0,
                color: Colors.purple,
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                color: Colors.green[200],
                icon: Icon(FontAwesomeIcons.weixin),
                iconSize: 40,
                onPressed: () {
                  print('click weixin');
                },
              ),
              IconButton(
                color: Colors.green[200],
                icon: Icon(FontAwesomeIcons.facebook),
                iconSize: 40,
                onPressed: () {
                  print('click facebook');
                },
              ),
              IconButton(
                color: Colors.green[200],
                icon: Icon(FontAwesomeIcons.qq),
                iconSize: 40,
                onPressed: () {
                  print('click qq');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget bottomArea() {
    return Container(
      margin: EdgeInsets.only(right: 30, left: 30),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            child: Text(
              '忘记密码?',
              style: TextStyle(color: Colors.blue[400], fontSize: 16.0),
            ),
            onPressed: () {
              print('click forget password');
            },
          ),
          FlatButton(
            child: Text(
              "快速注册",
              style: TextStyle(
                color: Colors.blue[400],
                fontSize: 16.0,
              ),
            ),
            //点击快速注册、执行事件
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
