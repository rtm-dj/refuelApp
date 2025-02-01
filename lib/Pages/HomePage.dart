import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:go_router/go_router.dart';


Color _getFuelBackgroundColor(String fuelType) {
  switch (fuelType) {
    case 'Дт':
      return Colors.black;
    case '95':
      return Color(0xFFCE0000); 
    case '92':
      return Color(0xFFEDC800);
    default:
      return const Color.fromARGB(255, 39, 197, 203);
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Image.network(
              'https://yandex-images.clstorage.net/9o5mvK453/ad6e7fZXqu/-rcdZn7ex44IYWenSsih0qoGPttN6IrQX_2XUT7FxqyAEWuTqUz7ZMci1M0EmQujmhmIYeQEwrWi4XiAbHJm-r7mXCo5ldHQVSR980LLpNC3W33KUbKOjUW_yw93m8mp1UcD_tA0jQOxEv66LuMWp5JNjy3_T9bem_RvqTclBKj9sQVUXMqeqhxzK7ZK6Y_WmnE_z3eJhapa_uEaTOHmwo8NN-DzJ6k9pzjgiQzXArypWq0Ch07E04GdfoU7JyS5-qQAUHzcm5EdSCG_Zved-ppyHc9dibG4edL_D1Tk6MeNHjjMwAGcO40C8KQz7A6wjkqAGJxL7OWJjFyhOz06uMmbO21K456vGnc5nEn3st2TfQXHVbOhp2Pr7CVUw-vzgTsS8sASix6KEMWqMcEen518ry-_ZffZr4NOowAGLafbmx99f-WRkS9FC7Nz8bb1hmM30WGWsplm-9w6Zvfo7IwxCcfAEIwQmxH_qy__J6CwR5kwhXXbzIqEUJMsBw253ZAqS3_XsKcrWwOWSf-R8IptEtl2nbeIdNrGDlbJ9PmADhbX0BKjFY0LxogTwhyIiXicG71S9_GLsmqGDw88pM-hAHFmyqiTLUENjkn2huabQRLSepGormbxxDBG697ghwIbw_kMjBW4KeKJKeYJqr9ugjq1Z-LSgLNIujYbOL_EjwtmY9-Emw9kJrNm97HvoHkh2kmDoZtE3_syQu73x60wLMPkA6Q6rCXYty_cPK2tf7gQnHbg7LGnWq85BSeB27wecHjUmJkYSCuxYseu-KVmPNVco5OKXe7zCWj4wcy3NxX12wOlOa8mwrYFwz-htE-BL5tr98yTvlGOIi06i-SvD39J3oe2I0Aci0rhodW5cTH3er6JvUzt8zhx7uXOhTMJ5cAwlhibDvGHHtwIqIpwgwO8a-7RnoR-pgscOr_flwVAW_eihCtaEKRgx43jvHw7yVSPpKdZ2vsTado',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 40.0),
            child: Column(
              children: [
                const SizedBox(height: 80),
                Row(
                  children: [
                    Flexible(
                      child: _buildBlock(
                        imageUrl: 'https://static.tildacdn.com/tild3061-6235-4439-b732-376430666363/tg_image_3412401593.jpeg',
                        iconUrl: 'assets/img/coffee.png',
                        text: 'КОФЕ МАГАЗИН',
                        type: 1,
                        onTap: () {
                          GoRouter.of(context).push('/pay');
                        },
                      ),
                    ),
                    const SizedBox(width: 25),
                    Flexible(
                      child: _buildBlock(
                        imageUrl: 'https://static.tildacdn.com/tild3061-6235-4439-b732-376430666363/tg_image_3412401593.jpeg',
                        iconUrl: 'assets/img/bill.png',
                        text: 'ПЕЧАТЬ ЧЕКА ПО ТОПЛИВНОЙ КАРТЕ',
                        type: 2,
                        onTap: () {
                          GoRouter.of(context).push('/fuel');
                        },
                      ),
                    ),
                    const SizedBox(width: 25),
                    Flexible(
                      child: _buildBlock(
                        imageUrl: 'https://static.tildacdn.com/tild3061-6235-4439-b732-376430666363/tg_image_3412401593.jpeg',
                        iconUrl: 'assets/img/coin.png',
                        text: 'ВОЗВРАТ',
                        type: 3,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 120),
                Text(
                  'ОПЛАТА ТОПЛИВА',
                  style: const TextStyle(
                    fontSize: 120,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50), // Отступы по бокам
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 44,
                      mainAxisSpacing: 44,
                      mainAxisExtent: 350,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      final cardData = [
                        {'columnNumber': '1', 'fuelTypes': ['Дт'], 'buttonState': 0},
                        {'columnNumber': '2', 'fuelTypes': ['Дт'], 'buttonState': 0},
                        {'columnNumber': '3', 'fuelTypes': ['Дт', '98', '95'], 'buttonState': 2},
                        {'columnNumber': '4', 'fuelTypes': ['Дт', '95', '92'], 'buttonState': 0},
                        {'columnNumber': '5', 'fuelTypes': ['Дт', '95', '92'], 'buttonState': 0},
                        {'columnNumber': '6', 'fuelTypes': ['Дт', '98', '95'], 'buttonState': 1},
                      ];

                      final data = cardData[index];

                      return _buildCard(
                        columnNumber: data['columnNumber'] as String,
                        fuelTypes: data['fuelTypes'] as List<String>,
                        buttonState: data['buttonState'] as int,
                      );
                    },
                  ),
                ),




              
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBlock({
    required String imageUrl,
    required String iconUrl,
    required String text,
    required int type,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap, // Handle tap events
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          border: Border.all(color: Colors.white, width: 5.0),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 90,
                height: 90,
                child: Image.asset(
                  iconUrl,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 8.0),
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 280,
                ),
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: type == 2 ? 30 : 40,
                  ),
                  textAlign: TextAlign.start,
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildCard({required String columnNumber, required List<String> fuelTypes, required int buttonState}) {
    return Container(
      height: 350,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [

          Container(
            height: 82,
            decoration: BoxDecoration(
              color: Color(0xFF3B658B),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36),
                topRight: Radius.circular(36),
              ),
            ),
            padding: const EdgeInsets.only(left: 50, right: 15),
            child: Row(
              children: [
                // Группируем Image, SizedBox и Text
                Row(
                  children: [
                    Image.asset('assets/img/petrol.png', width: 60, height: 60),
                    const SizedBox(width: 15),
                    Text(
                      columnNumber,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const Spacer(),
                buttonState != 0
                ? CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: _getFuelBackgroundColor('95'),
                    child: Text(
                      '95',
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w900,
                        fontSize: 26,
                      ),
                    ),
                  )
                : Container() // Если buttonState == 0, не отображать ничего

              ],
            )

          ),

          buttonState == 0 ? Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                // color: Colors.red,
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    for (int i = 0; i < fuelTypes.length; i++)
                      Positioned(
                        left: i * 100.0 - (fuelTypes.length - 6) * 50.0,
                        child: CircleAvatar(
                          maxRadius: 60,
                          backgroundColor: _getFuelBackgroundColor(fuelTypes[i]),
                          child: Text(
                            fuelTypes[i],
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900,
                              fontSize: 48,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ) :
          buttonState == 1 ? Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  // color: Colors.red,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/gasColumn.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '2300.40 руб.',
                            style: TextStyle(
                              color: Color(0xFF0278BE),
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '34.00 л.',
                            style: TextStyle(
                              color: Color(0xFF0278BE),
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )


              ),
            ):
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  // color: Colors.red,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img/gasColumn.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '2300.40 руб.',
                            style: TextStyle(
                              color: Color(0xFF0278BE),
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '34.00 л.',
                            style: TextStyle(
                              color: Color(0xFF0278BE),
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )


              ),
            ),



          GestureDetector(
            onTap: () {
              
            },
            child: Container(
              height: 82,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF3B658B),
                borderRadius: BorderRadius.circular(36),
              ),
              child: Center(
                child: buttonState == 0
                    ? const Text(
                        'ЗАПРАВИТЬСЯ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),
                      )
                    : buttonState == 1
                        ? Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/img/timer.png', width: 50, height: 50),
                              const SizedBox(width: 30),
                              const Text(
                                'ИДЕТ НАЛИВ ТОПЛИВА',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        : const Text(
                            'ЗАПРАВКА ЗАВЕРШЕНА',
                            style: TextStyle(
                              color: Color.fromARGB(255, 99, 224, 62),
                              fontFamily: 'Montserrat',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}