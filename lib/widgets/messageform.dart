import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:email_validator/email_validator.dart';

class MessageForm extends StatefulWidget {
  @override
  _MessageFormState createState() => _MessageFormState();
}

class _MessageFormState extends State<MessageForm> {
  bool isvalid = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  String _email;
  void _submitCommand() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();

      // is saved to _email field.
      _loginCommand();
    }
  }

  void _loginCommand() {
    // This is just a demo, so no actual login here.
    final snackbar = SnackBar(
      content: Text('Email: $_email'),
    );

    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'US';
  PhoneNumber number = PhoneNumber(isoCode: 'US');

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: Column(
        children: <Widget>[
          Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Enter Name",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(247, 64, 106, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(25.0)),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Name cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                InternationalPhoneNumberInput(
                  inputDecoration: InputDecoration(
                    labelText: "Mobile Number",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(247, 64, 106, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(25.0)),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                  ),
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  ignoreBlank: false,
                  autoValidate: false,
                  selectorTextStyle: TextStyle(color: Colors.black),
                  initialValue: number,
                  textFieldController: controller,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Enter Email",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(247, 64, 106, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(25.0)),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                  ),
                  validator: (val) => !EmailValidator.validate(val, true)
                      ? 'Not a valid email.'
                      : null,
                  onSaved: (val) => _email = val,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                new TextFormField(
                  maxLines: 3,
                  decoration: new InputDecoration(
                    labelText: "Enter Message",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(247, 64, 106, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(25.0)),
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Message cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 250.0,
                      child: RaisedButton(
                        color: const Color.fromRGBO(247, 64, 106, 1.0),
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        ),
                        onPressed: () {
                          formKey.currentState.validate();
                          /* onPressed:
                          _submitCommand; */
                        },
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
