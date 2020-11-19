import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




class Verification extends StatefulWidget {
  @override
  
  _VerificationState createState() => _VerificationState();
  
}
  class _VerificationState extends State<Verification>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.black12
            ],
            begin: Alignment.topRight,
          )
        ),
        child: OtpScreen(),
              ),
            );
        }
        }
        
        class OtpScreen extends StatefulWidget {
          @override
        _OtpScreenState createState() => _OtpScreenState(); 
                  }
        class _OtpScreenState extends State<OtpScreen>{
          List<String> currentPin = ["","","",""];
          TextEditingController pinOneController = TextEditingController();
          TextEditingController pinTwoController = TextEditingController();
          TextEditingController pinThreeController = TextEditingController();
          TextEditingController pinFourController = TextEditingController();
          
          var outlineInputBorder = OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.transparent),
             );

            int pinIndex = 0;


           @override
           Widget build(BuildContext context) {
             return SafeArea(
               child: Column(
                 children: <Widget>[
                   buildExitButton(),
                   Expanded(
                     child: Container(
                       alignment: Alignment(0, 0.5),
                       padding: EdgeInsets.symmetric(horizontal: 16.0),
                       child: Column(
                         mainAxisSize: MainAxisSize.min,
                         children: <Widget>[
                           buildSecurityText(),
                           SizedBox(height: 40.0,),
                           buildPinRow()
                         ],
                       ),
                     ),
                     ),
                     buildNumberPad(),
                 ],
               ),
                 
                 );
    
  }
}
buildNumberPad(){
  return Expanded(
    child: Container(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom:  32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                KeyboardNumber(
                  n:1,
                  onPressed:(){
                    pinIndexSetup("1");
                  },
                ),
                KeyboardNumber(
                  n:2,
                  onPressed:(){
                    pinIndexSetup("2");
                  },
                ),
                KeyboardNumber(
                  n:3,
                  onPressed:(){
                    pinIndexSetup("3");
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                KeyboardNumber(
                  n:4,
                  onPressed:(){
                    pinIndexSetup("4");
                  },
                ),
                KeyboardNumber(
                  n:4,
                  onPressed:(){
                    pinIndexSetup("5");
                  },
                ),
                KeyboardNumber(
                  n:6,
                  onPressed:(){
                    pinIndexSetup("6");
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                KeyboardNumber(
                  n:7,
                  onPressed:(){
                    pinIndexSetup("7");
                  },
                ),
                KeyboardNumber(
                  n:8,
                  onPressed:(){
                    pinIndexSetup("8");
                  },
                ),
                KeyboardNumber(
                  n:9,
                  onPressed:(){
                    pinIndexSetup("9");
                  },
                ),
              ],
            ),Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 60.0,
                  child: MaterialButton(
                    onPressed: null,
                    child: SizedBox(), 
                    ),
                ),
                KeyboardNumber(
                  n:0,
                  onPressed:(){
                    pinIndexSetup("0");
                  },
                ),
                Container(
                  width: 60.0,
                  child: MaterialButton(
                    height: 60.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0)
                    ),
                    onPressed: (){},
                    child: Icon(Icons.backspace),
                  ),
                ),       
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
pinIndexSetup(String text){
  var pinIndex, currentPin;
    if (pinIndex == 0 )
  pinIndex = 1;
  else if (pinIndex < 4)
  pinIndex++;
  SetPin(pinIndex, text);
  currentPin[pinIndex-1] = text;
  String strPin ="";

  currentPin.forEach((e){
    strPin += e;
  });
if(pinIndex == 4)
  print(strPin);

}
SetPin(int n, String text ){
      var pinOneControlller,
          pinTwoControlller,
          pinThreeControlller,
          pinFourControlller,
          pinFiveControlller,
          pinSixControlller,
          pinSevenControlller,
          pinEightControlller,
          pinNineControlller,
          pinZeroControlller

      ;
  switch(n){
    case 1:
        pinOneControlller.text = text; 
        break;
    case 2:
        pinTwoControlller.text = text; 
        break;
    case 3:
        pinThreeControlller.text = text; 
        break;
    case 4:
        pinFourControlller.text = text; 
        break;
    
    case 5:
        pinFiveControlller.text = text; 
        break;
    
    case 6:
        pinSixControlller.text = text; 
        break;
    
    case 7:
        pinSevenControlller.text = text; 
        break;
    case 8:
        pinEightControlller.text = text; 
        break;
    
    case 9:
        pinNineControlller.text = text; 
        break;
    
    case 0:
        pinZeroControlller.text = text; 
        break;

  }
  
}

buildPinRow(){
  var outlineInputBorder;
  var pinOneController;
  var pinTwoController;
  var pinThreeController;
  var pinFourController;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            PinNumber(
              outlineInputBorder: outlineInputBorder,
             textEditingController: pinOneController,
             ),
            PinNumber(
              outlineInputBorder: outlineInputBorder,
              textEditingController: pinTwoController,
              ),
            PinNumber(
              outlineInputBorder: outlineInputBorder,
              textEditingController: pinThreeController,
              ),
            PinNumber(
              outlineInputBorder: outlineInputBorder,
              textEditingController: pinFourController,
              ),

    ],
  );

}
class PinNumber extends StatelessWidget {
  final TextEditingController textEditingController;
  final OutlineInputBorder outlineInputBorder;
  PinNumber({this.textEditingController,this.outlineInputBorder});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      child: TextField(
        controller: textEditingController,
        enabled: false,
        obscureText: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16.0),
          border: outlineInputBorder,
          filled: true,
          fillColor: Colors.white30,
        ),
      ),
    );

  }
}

class KeyboardNumber extends StatelessWidget {
  final int n;
  final Function() onPressed;
  KeyboardNumber({this.onPressed,this.n});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.purple.withOpacity(0.1),
      ),
      alignment: Alignment.center,
      child: MaterialButton(
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60.0),
        ),
        height: 90.0,
        child: Text(
          "$n",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24 *MediaQuery.of(context).textScaleFactor,
            color: Colors.white,
            fontWeight:FontWeight.bold
          ),
        ),
      ),
    );    
  }
  
}

buildSecurityText(){
  return Text(
    "Confirm the 4-Digit Code",
      style:
      TextStyle(
        color: Colors.black,
        fontSize: 21.0,
        fontWeight: FontWeight.normal
      ),
      );
}

buildExitButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Padding (
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          onPressed: (){},
          height: 50.0,
          minWidth: 50.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Icon(Icons.clear, color: Colors.white,),
        ),
        ),
    ], 
  );
}