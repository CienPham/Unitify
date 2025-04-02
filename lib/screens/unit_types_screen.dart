import 'package:flutter/material.dart';

class UnitTypesScreen extends StatelessWidget {
  const UnitTypesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1524), // Màu nền tối navy
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              // Tiêu đề chính
              const Padding(
                padding: EdgeInsets.only(top: 100, bottom: 20),
                child: Text(
                  'Supports over\n10 unit types',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: 1.2,
                  ),
                ),
              ),

              // Phần mô tả
              const Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Text(
                  'Convert units across a\nwide range of categories',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    height: 1.3,
                  ),
                ),
              ),

              // Hàng đầu tiên của các biểu tượng
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildCategoryItemWithImage(
                        'Length',
                        'assets/ruller.png',
                        context,
                      ),
                      _buildCategoryItemWithImage(
                        'Mass',
                        'assets/body.png',
                        context,
                      ),
                      _buildCategoryItemWithImage(
                        'Temperature',
                        'assets/thermometer.png',
                        context,
                      ),
                    ],
                  ),
                ),
              ),

              // Hàng thứ hai của các biểu tượng
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCategoryItemWithImage(
                        'Time',
                        'assets/clock.png',
                        context,
                      ),
                      const SizedBox(width: 60),
                      _buildCategoryItemWithImage(
                        'Step',
                        'assets/process.png',
                        context,
                      ),
                    ],
                  ),
                ),
              ),

              // Nút Get Started
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: ElevatedButton(
                  onPressed: () {
                    // Xử lý khi nút được nhấn
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3366FF),
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Get started',
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

  Widget _buildCategoryItemWithImage(
    String label,
    String imagePath,
    BuildContext context,
  ) {
    return Column(
      children: [
        Container(
          width: 70, // Reduced from 80
          height: 70, // Reduced from 80
          decoration: BoxDecoration(
            color: const Color(0xFF1E2738),
            borderRadius: BorderRadius.circular(35),
          ),
          child: Center(
            child: Image.asset(
              imagePath,
              width: 35, // Reduced from 40
              height: 35, // Reduced from 40
              color: Colors.lightBlue[200],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(label, style: const TextStyle(fontSize: 14, color: Colors.white)),
      ],
    );
  }
}
