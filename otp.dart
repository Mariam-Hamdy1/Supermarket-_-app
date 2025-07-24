import 'package:flutter/material.dart';
import 'home_screen.dart';

class OtpScreen extends StatelessWidget {
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Verify OTP", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text("Enter the 6-digit code sent to your phone"),
            SizedBox(height: 20),
            TextField(controller: otpController, decoration: InputDecoration(labelText: 'OTP Code')),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              child: Text("Verify"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}