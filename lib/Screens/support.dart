import 'package:flutter/material.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotel view'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Scrollbar(
                controller: _scrollController,
                thumbVisibility: true,
                child: ListView(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 350,
                          height: 250, // Adjust height to fit the image
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('https://i.pinimg.com/736x/82/87/3d/82873d3e3adb350bdc9d9fccafb46665.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text('FRONT VIEW'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 300,
                          height: 250, // Adjust height to fit the image
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('https://www.usatoday.com/gcdn/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text('BEDROOM'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 300,
                          height: 250, // Adjust height to fit the image
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('https://www.anandamresort.com/new-images/Restaurant/4-star-hotels-in-Udaipur-with-a-view-and-food_w_1200.webp'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text('DINING HALL'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20), // Spacer for separation
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Here you can see the stunning front view of the hotel, The hotel offers pleasant rooms, a dining hall, and more.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SupportScreen(),
  ));
}
