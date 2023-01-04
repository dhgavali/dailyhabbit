import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailCt = TextEditingController();
  final TextEditingController _passCt = TextEditingController();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(vertical: 5),
              child: MyInpField(label: "Email Id", controller: _emailCt, hr: 0),
            ),
            Container(
              width: 300,
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.symmetric(vertical: 5),
              child: TextFormField(
                controller: _passCt,
                obscureText: true,
                decoration:const InputDecoration(
                  hintText: "password",
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                // login method here
              
              },
              child: Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.shade700,
                ),
                alignment: Alignment.center,
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ]),
    ));
  }
}




Widget MyInpField({
  required String label,
  required TextEditingController controller,
  double width = 300,
  double height = 55,
  TextInputType keytype = TextInputType.name,
  int maxlen = 200,
  double hr = 15,
  double vr = 5,
  bool digitsonly = false,
  String? Function(String?)? validate
}) {
  return Container(
    width: width,
    height: height,
    margin: EdgeInsets.symmetric(horizontal: hr, vertical: vr),
    child: TextFormField(
      validator: validate,
      controller: controller,
      decoration: InputDecoration(
        label: Text(label),
        counterText: "",
        counter: null,
      ),
      inputFormatters: digitsonly ? [FilteringTextInputFormatter.digitsOnly] : [],
      keyboardType: keytype,
      maxLength: maxlen,
    ),
  );
}
