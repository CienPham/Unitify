import 'package:flutter/material.dart';
import 'package:uniti1/screens/unit_types_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF0F1524,
      ), // Màu nền tối navy như trong hình
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Phần tiêu đề ở trên cùng
              const Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  'Convert units\neasily',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    height: 1.2,
                  ),
                ),
              ),

              // Phần giữa với hình ảnh chuyển đổi kg<->lb
              Container(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Image.asset(
                  'assets/Group_2.png', // Tên file hình ảnh chuyển đổi của bạn
                  width: 350,
                  height: 250,
                  fit: BoxFit.contain,
                ),
              ),

              // Phần văn bản dưới
              const Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Text(
                  'Quickly convert between\nunits with an intuitive\ninterface',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    height: 1.3,
                  ),
                ),
              ),
 
              // Nút Next
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UnitTypesScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3366FF),
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
