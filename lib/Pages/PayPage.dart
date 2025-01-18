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

class PayPage extends StatelessWidget {
  const PayPage({super.key});

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
            padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 40.0),
            child: Column(
              children: [
                const SizedBox(height: 220),
                Text(
                  'ВЫБЕРИТЕ ВИД ОПЛАТЫ',
                  style: const TextStyle(
                    fontSize: 110,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 90),
                Text(
                  'К оплате 2 300.40 руб.',
                  style: const TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '34.00 л АИ-92',
                  style: const TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 90),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(40.0), 
                            border: Border.all(
                              color: Colors.white,
                              width: 5.0,
                            ),
                          ),
                          child: Row(
                            children: [

                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: SizedBox(
                                  width: 300,
                                  height: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image.asset(
                                      'assets/img/bankCard.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Банковская карта',
                                    style: const TextStyle(
                                      fontSize: 54,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 60),
                      Padding(
                        padding: const EdgeInsets.all(5.0), 
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent, 
                            borderRadius: BorderRadius.circular(40.0),
                            border: Border.all(
                              color: Colors.white,
                              width: 5.0,
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: SizedBox(
                                  width: 300,
                                  height: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image.asset(
                                      'assets/img/sbp.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'СБП-оплата по QR-коду',
                                    style: const TextStyle(
                                      fontSize: 54,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 60),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(40.0),
                            border: Border.all(
                              color: Colors.white,
                              width: 5.0,
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: SizedBox(
                                  width: 300,
                                  height: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image.asset(
                                      'assets/img/fuelCard.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Топливная карта',
                                    style: const TextStyle(
                                      fontSize: 54,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 250),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 700,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(40.0),
                            border: Border.all(
                              color: Colors.white,
                              width: 5.0,
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Отменить заказ',
                                    style: const TextStyle(
                                      fontSize: 54,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PayPage(),
    ),
  );
}
