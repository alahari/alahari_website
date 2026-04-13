import 'package:flutter/material.dart' hide MenuBar;
import 'package:minimal/components/components.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: <Widget>[
              MenuBar(),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: CircleAvatar(
                        // backgroundImage: AssetImage("assets/images/venki.jpeg"),
                        //  radius: 40,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/venki.jpeg'),
                              fit: BoxFit
                                  .scaleDown, // Add fit property to adjust image display
                            ),
                          ),
                        ),
                      ),
                      title: Text(
                        "Venkateswarlu Alahari",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("Director"),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: CircleAvatar(
                        // backgroundImage: AssetImage("assets/images/venki.jpeg"),
                        //  radius: 40,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/leela.jpeg'),
                              fit: BoxFit
                                  .scaleDown, // Add fit property to adjust image display
                            ),
                          ),
                        ),
                      ),
                      title: Text(
                        "Leelavathi Alahari",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("Director"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/mahesh_babu.jpeg',
                            width: 140,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 24),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nemalikanti Mahesh Babu',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Chief Technology Officer (CTO)',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Mr. Mahesh Babu brings robust technical leadership with 12 years of experience in the electrical field. For the past 3 years, he has specialized specifically in Electric Vehicle chargers, gaining deep insights into the evolving technology. His expertise covers the complete spectrum of end-to-end charging station installation and management, ensuring technical reliability in all our deployments.',
                                style: TextStyle(
                                  fontSize: 15,
                                  height: 1.6,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              //  const Footer()
              // Footer
              SizedBox(height: 100,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Address: Alahari Enterprises',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('                  H NO 4-154/28'),
                      Text('                  LAXMINAGAR COLONY, BANDLAGUDA JAGIR, HYDERABAD - 500086'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
