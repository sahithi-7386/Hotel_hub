import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Hotel(),
  ));
}

class Hotel extends StatefulWidget {
  const Hotel({super.key});

  @override
  State<Hotel> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<Hotel> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hotel category'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Staying Rooms', icon: Icon(Icons.hotel)),
              Tab(text: 'Dining', icon: Icon(Icons.dining_rounded)),
              Tab(text: 'Other', icon: Icon(Icons.info)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SingleRoomPage()),
                    );
                  },
                  child: _buildOverviewItem('Single Bed Room', 'https://www.hotelmonterey.co.jp/upload_file/monhtyo/stay/sng_600_001.jpg'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TwinsRoomPage()),
                    );
                  },
                  child: _buildOverviewItem('Twins Bed Room', 'https://www.macdicroyalplazahotel.com/wp-content/uploads/2024/02/69A9654.webp'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TripleRoomPage()),
                    );
                  },
                  child: _buildOverviewItem('Triple Bed Room', 'https://www.atanahotel.com/wp-content/uploads/2024/05/Triple_Room.jpg'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DoubleRoomPage()),
                    );
                  },
                  child: _buildOverviewItem('Double Room', 'https://www.hotelmonterey.co.jp/upload_file/monhtyo/stay/db_600_001.jpg'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const VillaRoomPage()),
                    );
                  },
                  child: _buildOverviewItem('Villa Room', 'https://assets.cntraveller.in/photos/64ba838c0d528c30692aa9dd/master/w_1600%2Cc_limit/Aravali%2520Suite%2520Bedroom.jpg'),
                ),
              ],
            ),
            ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const IndianDishesPage()),
                    );
                  },
                  child: _buildDiningItem('Indian Dishes', 'https://images.squarespace-cdn.com/content/v1/612d4825ee7c3b7ba3e215b7/1667458982443-N6XGU1PU7335QEMVUP7M/Delicious+food.png'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChineseDishesPage()),
                    );
                  },
                  child: _buildDiningItem('Chinese Dishes', 'https://img-cdn-china-admissions.imgix.net/wp-content/uploads/2020/02/Chinese-food.jpg?auto=format%2Cenhance%2Ccompress'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ItalianDishesPage()),
                    );
                  },
                  child: _buildDiningItem('Italian Dishes', 'https://gobargingwp-s3.s3.eu-west-1.amazonaws.com/wp-content/uploads/2022/08/Top-Italian-Dishes-Fettuccine-al-Pomodoro.jpg'),
                  ),
                  GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const saladsDishesPage()),
                    );
                  },
                  child: _buildDiningItem('Salad Dishes', 'https://www.tasteofhome.com/wp-content/uploads/2018/01/Favorite-Mediterranean-Salad_EXPS_DIYD21_41556_E04_27_6b.jpg'),
                  ),
                  GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const mocktailsPage()),
                    );
                  },
                  child: _buildDiningItem('Mocktails', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/04/mocktail-3b9ab7d.jpg'),
                  ),       
                
              ],
            ),
            ListView(
              children: [
                _buildOtherItem('Function Hall', 'https://cdn0.weddingwire.in/vendor/3611/3_2/960/jpg/gc2_15_33611.jpeg'),
                _buildOtherItem('Conference Room', 'https://www.editionhotels.com/wp-content/uploads/2019/01/SHN2_34a_P2_RGB_V2.jpg'),
                _buildOtherItem('Gym', 'https://miro.medium.com/v2/resize:fit:1027/1*7BhETl0R80lWMVTT-4wh_g.jpeg'),
                _buildOtherItem('Swimming Pool', 'https://www.99acres.com/microsite/articles/files/2023/10/swimming_pool_for_home_outdoor-e252fc5c-33fd-4e17-95fe-88a476f4a6ae.jpg'),
                _buildOtherItem('Garden', 'https://hips.hearstapps.com/hmg-prod/images/hotel-la-aldea-jpg-1489174237.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOverviewItem(String title, String imageUrl) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.network(
            imageUrl,
            width: 150,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
          Expanded(child: Text(title, style: const TextStyle(fontSize: 18))),
        ],
      ),
    );
  }

  Widget _buildDiningItem(String title, String imageUrl) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipRect(
            child: Image.network(
              imageUrl,
              width: 150,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(child: Text(title, style: const TextStyle(fontSize: 18))),
        ],
      ),
    );
  }

  Widget _buildOtherItem(String title, String imageUrl) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.network(
            imageUrl,
            width: 150,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
          Expanded(child: Text(title, style: const TextStyle(fontSize: 18))),
        ],
      ),
    );
  }
}

class SingleRoomPage extends StatelessWidget {
  const SingleRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Bed Room'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              children: [
                Image.network(
                  'https://www.hotelmonterey.co.jp/upload_file/monhtyo/stay/sng_600_001.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIQrlJ1v4OhG7qZNpDy78iSg2kr3B90OD52Q&s', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://scdn.aro.ie/Sites/50/imperialhotels2022/uploads/images/FullLengthImages/Large/Royal_National_Standard_Single_4.jpg', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              'Details about the Single Bed Room\n\n'
              'RS:2500\n'
              'Wi-Fi: all guest rooms have individual connection\n'
              'Indoor Phone, Mini Table\n'
              'Laundry Bag, Pot, Refrigerator, Hanger, Washing Toilet with Equipment\n',
              
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}

class TwinsRoomPage extends StatelessWidget {
  const TwinsRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Twins Bed Room'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              children: [
                Image.network(
                  'https://www.macdicroyalplazahotel.com/wp-content/uploads/2024/02/69A9654.webp',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://media.nomadicmatt.com/hotelreview1a.jpg', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://img.traveltriangle.com/blog/wp-content/uploads/2020/02/cover-kandalama-resort.jpg', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              'Details about the Twins Bed Room\n'
              'RS:3500\n'
              'Wi-Fi: all guest rooms have individual connection\n'
              'Indoor Phone, Mini Table\n'
              'Laundry Bag, Pot, Refrigerator, Hanger, Washing Toilet with Equipment\n'
              'Bath Towel, Body soap, hot water is available 24 hrs',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}

class TripleRoomPage extends StatelessWidget {
  const TripleRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Triple Bed Room'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              children: [
                Image.network(
                  'https://www.atanahotel.com/wp-content/uploads/2024/05/Triple_Room.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://www.hotelmonterey.co.jp/upload_file/monhtyo/stay/trp_600_001.jpg', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://q-xx.bstatic.com/xdata/images/hotel/840x460/171215151.jpg?k=ad7cc404208d444cfaf128a6ccbfef6ab7bc2924d4d745f27e0d08f5acb377cf&o=', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              'Details about the Triple Bed Room\n'
              'RS:4500\n'
              'Wi-Fi: all guest rooms have individual connection\n'
              'Indoor Phone, Mini Table\n'
              'Laundry Bag, Pot, Refrigerator, Hanger, Washing Toilet with Equipment\n'
              'Bath Towel, Body soap, hot water is available 24 hrs',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}

class DoubleRoomPage extends StatelessWidget {
  const DoubleRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Double Bed Room'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              children: [
                Image.network(
                  'https://www.hotelmonterey.co.jp/upload_file/monhtyo/stay/db_600_001.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://i.pinimg.com/474x/52/b2/2f/52b22f161a9be28a5b77ed2e29aabdf2.jpg', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://thumbs.dreamstime.com/b/hotel-room-beautiful-orange-colour-double-bed-table-chairs-wide-open-window-curtains-sunny-day-29963150.jpg', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              'Details about the Double Bed Room\n'
              'RS:5500\n'
              'Wi-Fi: all guest rooms have individual connection\n'
              'Indoor Phone, Mini Table\n'
              'Laundry Bag, Pot, Refrigerator, Hanger, Washing Toilet with Equipment\n'
              'Bath Towel, Body soap, hot water is available 24 hrs',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}

class VillaRoomPage extends StatelessWidget {
  const VillaRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Villa Room'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              children: [
                Image.network(
                  'https://assets.cntraveller.in/photos/64ba838c0d528c30692aa9dd/master/w_1600%2Cc_limit/Aravali%2520Suite%2520Bedroom.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://imgcld.yatra.com/ytimages/image/upload/t_hotel_yatra_details_desktop/v1526305030/Hotel/00000521/IMG_9975.jpg', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://q-xx.bstatic.com/xdata/images/hotel/max1280x900/237197746.jpg?k=47ea7c8e6b66d69a2db77d8ddfb3db0d9b2ec4ed35b4f23e70b0dbe1db117f97&o=', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              'Details about the Villa Room\n\n'
              'RS:10000'
              'Wi-Fi: all guest rooms have individual connection\n'
              'Indoor Phone, Mini Table\n'
              'Laundry Bag, Pot, Refrigerator, Hanger, Washing Toilet with Equipment\n'
              'Bath Towel, Body soap, hot water is available 24 hrs',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}

class IndianDishesPage extends StatelessWidget {
  const IndianDishesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Indian Dishes'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              children: [
                Image.network(
                  'https://images.squarespace-cdn.com/content/v1/612d4825ee7c3b7ba3e215b7/1667458982443-N6XGU1PU7335QEMVUP7M/Delicious+food.png',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://img.etimg.com/thumb/msid-102987076,width-480,height-360,imgsize-80202,resizemode-75/biryani.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://img.etimg.com/thumb/101823457/101823457.jpg?height=746&width=420&resizemode=76&imgsize=164586', 
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              'Details about Indian Dishes\n\n'
              'Tandoori Chicken, Paneer Butter Masala\n'
              'Biryani, Naan, Roti\n'
              'Chole Bhature, Masala Dosa',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}

class ChineseDishesPage extends StatelessWidget {
  const ChineseDishesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chinese Dishes'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              children: [
                Image.network(
                  'https://img-cdn-china-admissions.imgix.net/wp-content/uploads/2020/02/Chinese-food.jpg?auto=format%2Cenhance%2Ccompress',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://images.chinahighlights.com/allpicture/2019/01/9b7159f6d89449d997eaa5ab_cut_800x500_61.jpg', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://i.pinimg.com/736x/dd/af/99/ddaf99325d208fd0f2e381f600e18e49.jpg', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              'Details about Chinese Dishes\n\n'
              'Sweet and Sour Pork, Kung Pao Chicken\n'
              'Spring Rolls, Dumplings\n'
              'Mapo Tofu, Chow Mein',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
class ItalianDishesPage extends StatelessWidget {
  const ItalianDishesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chinese Dishes'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              children: [
                Image.network(
                   'https://gobargingwp-s3.s3.eu-west-1.amazonaws.com/wp-content/uploads/2022/08/Top-Italian-Dishes-Fettuccine-al-Pomodoro.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://qph.cf2.quoracdn.net/main-qimg-76e838bc510e96d2aff3c894336594ed-lq', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://fooditraveler.com/wp-content/uploads/2021/01/6006a06376c50.jpg', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              'Details about italian Dishes\n\n'
              'Sweet and Sour Pork, Kung Pao Chicken\n'
              'Spring Rolls, Dumplings\n'
              'Mapo Tofu, Chow Mein',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
class saladsDishesPage extends StatelessWidget {
  const saladsDishesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('salads Dishes'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              children: [
                Image.network(
                    'https://www.chelseasmessyapron.com/wp-content/uploads/2014/04/FRUIT-SALAD-CHELSEASMESSYAPRON-1200-3.jpeg',
                  
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEHCj4VcxHTJFzBdJEzeJIgVtw8do3i3_4ZQ&s',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://i.pinimg.com/736x/6e/da/44/6eda445f8c442c2fa05e2b0118bff233.jpg', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              'Details about salads Dishes\n\n'
              'A salad is a dish consisting of mixed ingredients'
               'frequently vegetables. They are typically served chilled or at room temperature, though some can be served warm.',
              
              
              
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
class mocktailsPage extends StatelessWidget {
  const mocktailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('mocktails'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              children: [
                Image.network(
                   'https://images.immediate.co.uk/production/volatile/sites/30/2020/04/mocktail-3b9ab7d.jpg',
                       
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://images.herzindagi.info/image/2023/Mar/mocktails-recipes.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3F1O-Ulf2Qkpu_9srbMlN-v8pIbmyHQ7muCVReqZNwb8PW78t6Wl4Tb3C2BYmkpf1vTs&usqp=CAUg', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              'Details about mocktails\n\n'
              ' Mocktails are simply cocktails without the' 
              'liquor – they use a variety of tasty ingredients to create a flavor fusion, providing a sophisticated beverage sans alcohol',
              
              
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
