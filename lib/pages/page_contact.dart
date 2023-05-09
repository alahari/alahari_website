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
                              image:
                                  AssetImage('assets/images/sunil_garu.jpeg'),
                              fit: BoxFit
                                  .scaleDown, // Add fit property to adjust image display
                            ),
                          ),
                        ),
                      ),
                      title: const Text(
                        "Sunil Dutt Gurrapu",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("Chief Marketing Officer"),
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
                              image: AssetImage(''),
                              fit: BoxFit
                                  .scaleDown, // Add fit property to adjust image display
                            ),
                          ),
                        ),
                      ),
                      title: const Text(
                        "Rajesh Kumar Rapur",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("Chief Technical Architect"),
                    ),
                  ),
                ],
              ),
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
