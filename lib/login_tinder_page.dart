import 'package:flutter/material.dart';

class LoginTinderPage extends StatelessWidget {
  const LoginTinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.network(
            'https://images.pexels.com/photos/7213954/pexels-photo-7213954.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.5),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image.network(
                    'https://image.flaticon.com/icons/png/512/732/732251.png'),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'Location Changer',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Lorem ipsum to free',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding:
                      EdgeInsets.only(right: 10, left: 10, top: 12, bottom: 12),
                  child: Text('Login with Facebook'),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.red.shade400),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
