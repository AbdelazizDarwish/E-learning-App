import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workshop/presentation/controller/cubit/odc_cubit.dart';
import 'package:workshop/presentation/screens/app_layout/app_layout.dart';

import 'package:workshop/presentation/widgets/text_fieldwidget.dart';
import 'package:workshop/presentation/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmPasswordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController gendercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    List<String> genderList = <String>['Male', 'Female'];
    List<String> universityList = <String>['AUC', 'MSA', 'GUC', 'CIC'];
    String? dropdownValue = genderList.first;
    String dropdownValue2 = universityList.first;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocBuilder<OdcCubit, String>(
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.all(20),
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
                  height: 5.h,
                ),
                TextComponent(
                  text: 'Sign Up',
                  size: 29,
                  weight: FontWeight.bold,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                TextFieldComponent(
                  label: 'Name',
                  hint: 'Name',
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                TextFieldComponent(
                  label: 'Email',
                  hint: 'Email',
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                TextFieldComponent(
                  label: 'Password',
                  hint: 'Password',
                  suffixIcon: Icons.visibility_off,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                TextFieldComponent(
                  label: 'Confirm Password',
                  hint: 'Confirm Password',
                  suffixIcon: Icons.visibility_off,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                TextFieldComponent(
                  label: 'Phone Number',
                  hint: 'Phone Number',
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextComponent(
                      text: 'Gender',
                      size: 18,
                    ),
                    TextComponent(
                      text: 'University',
                      size: 18,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DropdownButton(
                      onChanged: (String? value) {},
                      value: dropdownValue,
                      items: genderList
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    DropdownButton(
                      value: dropdownValue2,
                      onChanged: (value2) {},
                      items: universityList
                          .map<DropdownMenuItem<String>>((String value2) {
                        return DropdownMenuItem<String>(
                            value: value2, child: Text(value2));
                      }).toList(),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => AppLayout()),
                      ModalRoute.withName('/')),
                  child: Container(
                    width: double.infinity,
                    height: size.height * 0.06,
                    decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: TextComponent(
                        text: 'Sign up',
                        size: 18,
                        color: Colors.white,
                        weight: FontWeight.bold,
                      ),
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
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 20.0),
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
                Container(
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
                      text: 'Login',
                      size: 18,
                      color: Colors.orange,
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
