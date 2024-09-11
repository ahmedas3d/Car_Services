import 'package:car_service/routes/routes.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color(0xffF2F2F2),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 10, bottom: 30),
                child: Row(
                  children: [
                    Image.asset('assets/images/logo.png'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start, // محاذاة لليسار
                children: [
                  Container(
                    height: 7,
                    width: 120,
                    decoration: BoxDecoration(
                      color: const Color(0xff0066B3),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color(0xff0066B3),
                        width: 2,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Select Service(s)',
                style: TextStyle(
                  fontSize: 34,
                  color: Color(0xff0066B3),
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(height: 60),
              const Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 40,
                runSpacing: 30,
                children: [
                  ServiceBox(
                    imagePath: 'assets/images/maintenance_48px.png',
                    name: 'Preventative\nMaintenance',
                  ),
                  ServiceBox(
                    imagePath: 'assets/images/brake_48px.png',
                    name: 'Brake',
                  ),
                  ServiceBox(
                    imagePath: 'assets/images/engine_48px.png',
                    name: 'Engine',
                  ),
                  ServiceBox(
                    imagePath: 'assets/images/exhaust_48px.png',
                    name: 'Exhaust\nSystem',
                  ),
                  ServiceBox(
                    imagePath: 'assets/images/tires.png',
                    name: 'Tires &\nWheels',
                  ),
                  ServiceBox(
                    imagePath: 'assets/images/transmission_48px.png',
                    name: 'Transmission',
                  ),
                ],
              ),
              // const SizedBox(height: 50),
              const SizedBox(
                height: 110,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.home);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0066B3),
                  padding: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 155,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceBox extends StatefulWidget {
  final String imagePath;
  final String name;

  const ServiceBox({
    required this.imagePath,
    required this.name,
    super.key,
  });

  @override
  _ServiceBoxState createState() => _ServiceBoxState();
}

class _ServiceBoxState extends State<ServiceBox> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            height: 155,
            width: 159,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: _isSelected
                  ? Border.all(
                      color: const Color(0xff0066B3),
                      width: 4) // Increased border width
                  : null,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      widget.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    widget.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xff0066B3),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
