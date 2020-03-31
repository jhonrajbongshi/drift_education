import 'package:flutter/material.dart';
import 'package:drift_education/widgets/roundedTextField.dart';
import 'package:drift_education/widgets/CustomFlatButton.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';


class SignUpScreen extends StatefulWidget {

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var _classItem = [
    'Class 6',
    'Class 7',
    'Class 8',
    'Class 9',
    'Class 10',
    'Class 11',
    'Class 12'
  ];
  var _currentValueSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Login'),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        "Welcome to Drift Education",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Image.asset(
                        'images/SignInImage.png',
                        height: 130,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RoundedTextField(
                        textName: 'Your Name',
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RoundedTextField(
                        textName: 'Email ID',
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RoundedTextField(
                        textName: 'Phone Number',
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(23)),
                          child: DropdownButton<String>(
                            items: _classItem.map((String dropDownStringItems) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItems,
                                child: Text(dropDownStringItems,textAlign: TextAlign.center,),
                              );
                            }).toList(),
                            onChanged: (String newValueSelected) {
                              setState((){
                                this._currentValueSelected=newValueSelected;
                              });
                            },value: _currentValueSelected),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RoundedTextField(
                        textName: 'password',
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      OutlineButton(
                        onPressed: (){},
                        child: Text('Upload Image'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomFlatButton(
                        textName: 'SignUp',
                        onPress: () {},
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Text("Institute Sign In"),
                      ),
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}
