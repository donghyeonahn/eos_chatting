import 'package:flutter/material.dart';
import '../config/palette.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);
  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}
class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
// TODO : isSignupScreen 변수 선언
bool isSignupScreen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    // TODO : background color로 palette의 backgroundColor 설정,
    backgroundColor: Palette.backgroundColor,

    body: Stack(
      children: [
        Positioned(
          // TODO : top, left, right 모두 0으로 설정
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            // TODO : height 300으로 설정
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                // TODO : background.png 넣기
                image: AssetImage('assets/background.png'),
                fit: BoxFit.fill
              ),
            ),
    child: Container(
      // TODO : padding top 90, left 20
      padding: EdgeInsets.only(top: 90.0, left: 20.0),
      child: Column(
      // TODO : 왼쪽 정렬,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'Welcome ',
              // TODO : letter spacing 1.0, font size 25, color white
                style: TextStyle(
                  letterSpacing: 1.0,
                  fontSize: 25,
                  color: Colors.white,
                ),

              children: [
                TextSpan(
                  text: 'to EOS chat',
                  // TODO : letter spacing 1.0, font size 25, color white, bold
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]
            )
          ),
                SizedBox(
                    // TODO : height 5.0으로 글 사이 간격 주기
                  height: 5.0,
                ),
                Text(
                    // TODO : spacing 1.0, color white
                  'Signup to continue',
                  style: TextStyle(
                    letterSpacing: 1.0,
                    color: Colors.white,
                  ),
                  )],),),)),
Positioned(
  // TODO : top 150
  top: 150,
  child: Container(
    // TODO : height 280.0, padding 모두 20, width 핸드폰 가로 길이 – 40
    // TODO : margin 가로로 양쪽 20
    padding: EdgeInsets.all(20.0),
    height: 280.0,
    width: MediaQuery.of(context).size.width - 40.0,
    margin: EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
      // TODO : color white, border radius 15
       color: Colors.white,
       borderRadius: BorderRadius.circular(15.0),
       boxShadow: [
         BoxShadow(
           // TODO : color black, 투명도 0.3, blur radius 15, spread radius 5
           color: Color.fromRGBO(0, 0, 0, 0.3),
           blurRadius: 15.0,
           spreadRadius: 5.0,
            )]
    ),
child: Column(
    children: [
      Row(
        // TODO : mainAxisAlignment.spaceAround
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        GestureDetector(
          child: Column(
            children: [
              Text(
                'LOGIN',
                // TODO : font size 16, bold
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  // TODO : palette의 textcolor1
                  color: Palette.textColor1,
                ),// TODO : isSigunupScreen이 false일 때만 밑줄이 생기도록

          ),
                isSignupScreen ? SizedBox()
      :
      Container(
// TODO : margin top만 3, height 2, width 55, color green
                  margin: EdgeInsets.only(top: 3),
                  height: 2,
                  width: 55,
                  color: Colors.green,
)
            ],),),
    GestureDetector(
      child: Column(
        children: [
          Text(
            'SIGNUP',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Palette.activeColor,
            ),
          ),
          // TODO : isSigunupScreen이 true일 때만 밑줄이 생기도록
          isSignupScreen ?
          Container(
            margin: EdgeInsets.only(top: 3),
            height: 2,
            width: 55,
            color: Colors.green,
    ) : SizedBox(),
        ],))],),
Container(
    child: Form(
      child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                // TODO : prefix icon 원하는 icon 입력, color는 palette의 iconColor
                prefixIcon: Icon(Icons.person),
                prefixIconColor: Palette.iconColor,
              enabledBorder: OutlineInputBorder(
                // TODO : borderside 색은 palette의 textColot1
                // TODO : border radius는 모두 35
                    borderRadius: BorderRadius.circular(35.0),
                    borderSide: BorderSide(color: Palette.textColor1),
            ),
              focusedBorder: OutlineInputBorder(
                //TODO : borderside 색은 palette의 textColot1
                // TODO : border radius는 모두 35
                borderRadius: BorderRadius.circular(35.0),
                borderSide: BorderSide(color: Palette.textColor1),
),),)]),))]),))],));}}