import 'package:flutter/material.dart';
import 'package:workshop/presentation/screens/register_screen.dart';
import 'package:workshop/presentation/widgets/text_widget.dart';
import 'package:workshop/presentation/widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              children: [
                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: 'Orange ',
                      style: TextStyle(color: Colors.orange, fontSize: 26),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Digital Center',
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            TextComponent(
              text: 'Login',
              size: 29,
              weight: FontWeight.bold,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            TextFieldComponent(
                label: 'Email',
                hint: 'Email',
                suffixIcon: Icons.visibility_off),
            SizedBox(
              height: size.height * 0.03,
            ),
            TextFieldComponent(
              label: 'Password',
              hint: 'Password',
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            TextComponent(
              text: 'Forgot Password?',
              decoration: TextDecoration.underline,
              color: Colors.orange,
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            Container(
              width: double.infinity,
              height: size.height * 0.06,
              decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(
                child: TextComponent(
                  text: 'Login',
                  size: 18,
                  color: Colors.white,
                  weight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: const Divider(
                        color: Colors.black,
                        height: 36,
                        thickness: 1,
                      )),
                ),
                const Text("OR"),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                    child: const Divider(
                      color: Colors.black,
                      height: 36,
                      thickness: 1,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterScreen())),
              child: Container(
                width: double.infinity,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  border: Border.all(color: Colors.orange),
                ),
                child: Center(
                  child: TextComponent(
                    text: 'Sign Up',
                    size: 18,
                    color: Colors.orange,
                    weight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
