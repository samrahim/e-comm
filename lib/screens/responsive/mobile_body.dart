import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                color: Colors.grey.shade100,
                child: const Center(
                  child: Text('التوصيل ل58 ولاية و الدفع عند الاستلام'),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.menu,
                      size: 32,
                    ),
                    Image.asset(
                      'images/be_unique_logo_4.png',
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.width / 5.5,
                    ),
                    const Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 20),
                        Icon(Icons.shopping_bag_outlined)
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.4,
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.darken),
                      child: Image.asset(
                        'images/depositphotos_64037639-stock-photo-valentines-day-background-with-gift.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 4,
                    child: const Text(
                      "إكتشف أحدث منتجاتنا",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          letterSpacing: 0.2,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 2.5,
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 12),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1)),
                        child: const Text(
                          'إشترِ الآن',
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Text('  Featured products'),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  print("hello");
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/Captured_ecran2024-10-10233244.png',
                      ),
                      const Text('زهرة الأسامي -فضة خالصة-'),
                      const SizedBox(height: 8),
                      const Text('DA 3,500.00 DZD'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
