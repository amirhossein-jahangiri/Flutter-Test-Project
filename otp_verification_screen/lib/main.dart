import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpVerificationScreen(),
    );
  }
}

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Verification code',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'we have sent the verification code to',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              RichText(
                text: const TextSpan(children: <InlineSpan>[
                  TextSpan(
                    text: '+98*******971 \t',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  TextSpan(
                    text: 'Change Phone number?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                      fontSize: 20.0,
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 8),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    CustomOtpTextField(),
                    CustomOtpTextField(),
                    CustomOtpTextField(),
                    CustomOtpTextField(),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        height: 45,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                              color: Colors.deepPurple, width: 2),
                        ),
                        child: const Text(
                          'Resend',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        height: 45,
                        color: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Text('Confirm', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomOtpTextField extends StatelessWidget {
  const CustomOtpTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: TextFormField(
        onChanged: (String? value) {
          if (value!.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        cursorColor: Colors.deepPurple,
        cursorHeight: 30,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.headline6,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          hintText: '2',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              color: Colors.deepPurple,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
