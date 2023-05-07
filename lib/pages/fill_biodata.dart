import 'package:flutter/material.dart';
import 'package:utpmpril/components/text_field.dart';
import 'package:utpmpril/pages/biodata.dart';

class FillBiodata extends StatelessWidget {
  FillBiodata({super.key});

  final nameController = TextEditingController();
  final npmController = TextEditingController();
  final kelasController = TextEditingController();
  final programstudiController = TextEditingController();
  final fakultasController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xff2193B0),
                  Color(0xff6DD5ED),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp)),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Image.asset(
              'assets/images/logo.png',
              width: 130,
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Isi Datamu',
                style: TextStyle(
                  fontSize: 29,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 25),
            MyTextField(
              controller: nameController,
              hintText: 'Nama',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            MyTextField(
              controller: npmController,
              hintText: 'NPM',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            MyTextField(
              controller: kelasController,
              hintText: 'Kelas',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            MyTextField(
              controller: programstudiController,
              hintText: 'Program Studi',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            MyTextField(
              controller: fakultasController,
              hintText: 'Fakultas',
              obscureText: false,
            ),
            Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Biodata(
                                  name: nameController.text,
                                  kelas: kelasController.text,
                                  npm: npmController.text,
                                  fakultas: fakultasController.text,
                                  programStudi: programstudiController.text,
                                )));
                  },
                  child: Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
