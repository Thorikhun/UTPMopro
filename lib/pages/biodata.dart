import 'package:flutter/material.dart';

class Biodata extends StatelessWidget {
  const Biodata({
    super.key,
    required this.name,
    required this.npm,
    required this.kelas,
    required this.programStudi,
    required this.fakultas,
  });

  final String name;
  final String npm;
  final String kelas;
  final String programStudi;
  final String fakultas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 75,
          ),
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/profile_pic.png',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [
                    Color(0xff2193B0),
                    Color(0xff6DD5ED),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'NPM',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff484848),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      npm,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff484848),
                      ),
                    ),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    const Text(
                      'Kelas',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff484848),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      kelas,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff484848),
                      ),
                    ),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    const Text(
                      'Program Studi',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff484848),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      programStudi,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff484848),
                      ),
                    ),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    const Text(
                      'Fakultas',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff484848),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      fakultas,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff484848),
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
}
