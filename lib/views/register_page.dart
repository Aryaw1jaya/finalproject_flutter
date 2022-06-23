import 'package:finalproject_flutter/constants/r.dart';
import 'package:finalproject_flutter/views/login_page.dart';
import 'package:finalproject_flutter/views/main_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);
  static String route = "register_page";
  @override
  State<RegisterPage> createState() => _LoginPageState();
}

enum Gender { lakilaki, perempuan }

class _LoginPageState extends State<RegisterPage> {
  String gender = "Laki-laki";
  List<String> Kelas = ["10", "11", "12"];
  String selectedClass = "10";

  onTapGender(Gender genderInput) {
    if (genderInput == Gender.lakilaki) {
      gender = "Laki-laki";
    } else {
      gender = "Perempuan";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Yuk isi data diri",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RegisterTextField(
                title: 'Nama Lengkap',
                hintText: 'Masukan nama anda',
              ),
              RegisterTextField(
                title: 'Email',
                hintText: 'Masukan email anda',
              ),
              Text(
                "Jenis Kelamin",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: gender == "Laki-laki"
                              ? Colors.blue
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        onPressed: () {
                          onTapGender(Gender.lakilaki);
                        },
                        child: Text(
                          "Laki-laki",
                          style: TextStyle(
                            fontSize: 18,
                            color: gender == "Laki-laki"
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: gender == "Perempuan"
                              ? Colors.blue
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        onPressed: () {
                          onTapGender(Gender.perempuan);
                        },
                        child: Text(
                          "Perempuan",
                          style: TextStyle(
                            fontSize: 18,
                            color: gender == "Perempuan"
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                "Jenis Kelamin",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: R.colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButton<String>(
                  value: selectedClass,
                  items: Kelas.map(
                    (e) => DropdownMenuItem<String>(
                      child: Text(e),
                      value: e,
                    ),
                  ).toList(),
                  onChanged: (String? val) {
                    selectedClass = val!;
                    setState(() {});
                  },
                ),
              ),
              SizedBox(height: 15),
              RegisterTextField(
                title: 'Nama Sekolah',
                hintText: 'Masukan nama sekolah anda',
              ),
              SizedBox(height: 90),
              ButtonLogin(
                // Button Register
                onTap: () {
                  Navigator.of(context).pushNamed(MainPage.route);
                },
                backgroundColor: R.colors.primary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      R.strings.btn_daftar,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                borderColor: R.colors.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterTextField extends StatelessWidget {
  const RegisterTextField({
    Key? key,
    required this.title,
    required this.hintText,
  }) : super(key: key);

  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: R.colors.grey,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey)),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
