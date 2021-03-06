import 'package:flutter/material.dart';
import 'package:jh_flutter_demo/project/configs/strings.dart';
import 'package:jh_flutter_demo/base_appbar.dart';
import 'package:jh_flutter_demo/jh_common/jh_form/jh_set_cell.dart';
import 'package:jh_flutter_demo/project/routes/navigator_utils.dart';


class FourPage extends StatefulWidget {
  @override
  _FourPageState createState() => _FourPageState();
}

class _FourPageState extends State<FourPage> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
          appBar:
              baseAppBar(context, KString.fourTabTitle,
                  rightImgPath:"assets/images/set.png",
                  rightItemCallBack: (){
                    NavigatorUtils.pushNamed(context, "SetPage");
                  }
              ),
          backgroundColor: Color(0xFFF8F8F8),
          body:

          ListView(
            children: <Widget>[
              SizedBox(height: 15,),
              JhSetCell(leftImgPath: "assets/images/ic_accountsafe.png", title: '账号安全'),
              JhSetCell(leftImgPath: "assets/images/ic_saoyisao.png", title: '扫一扫'),
              JhSetCell(leftImgPath: "assets/images/shezhi.png", title: '设置'),
              JhSetCell(leftImgPath: "assets/images/ic_about.png", title: '检查更新',text: '有新版本',textStyle: TextStyle(fontSize: 14.0,color: Colors.red),),

            ],
          ),


//          Scrollbar(
//              child: SingleChildScrollView(
//                child:
//              Column(
//                children: <Widget>[
//                  SizedBox(height: 15,),
//                  JhSetCell(leftImgPath: "assets/images/ic_accountsafe.png", title: '账号安全'),
//                  JhSetCell(leftImgPath: "assets/images/ic_saoyisao.png", title: '扫一扫'),
//                  JhSetCell(leftImgPath: "assets/images/shezhi.png", title: '设置'),
//                  JhSetCell(leftImgPath: "assets/images/ic_about.png", title: '检查更新',text: '有新版本',textStyle: TextStyle(fontSize: 14.0,color: Colors.red),),
//                ],
//              ),
//
//              )
//          )


      );




  }
}

