import 'package:car_service/routes/routes.dart';
import 'package:car_service/widgets/elevanted_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/logo.png"),
                  IconButton(
                    icon: const Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) => _buildMenuSheet(context),
                      );
                    },
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "by Coral Lab",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Total Car Care &\n Auto Repair\n Services",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            CustomButton(
              size: 24,
              textColor: Colors.black,
              title: "Book Now",
              vertical: 15,
              horizontal: 40,
              color: const Color(0xff92D6E3),
              onTap: () {},
            ),
            const Spacer(
              flex: 1,
            ),
            Center(
              child: Image.asset('assets/images/car.png'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuSheet(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.3,
      maxChildSize: 0.7,
      minChildSize: 0.3,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background_image.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CustomButton(
                  color: const Color(0xff92D6E3),
                  horizontal: 120,
                  vertical: 15,
                  size: 20,
                  textColor: Colors.black,
                  title: "Book Now",
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomButton(
                  color: const Color(0xffF2F2F2),
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.service);
                  },
                  title: "  Services ",
                  size: 20,
                  horizontal: 120,
                  vertical: 15,
                  textColor: Colors.black,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomButton(
                  color: const Color(0xffF2F2F2),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  title: " About Us ",
                  size: 20,
                  horizontal: 120,
                  vertical: 15,
                  textColor: Colors.black,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
