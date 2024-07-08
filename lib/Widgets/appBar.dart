import 'package:flutter/material.dart';

class MyappBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final VoidCallback onNotificationTap;

  MyappBar({
    required this.title,
    required this.scaffoldKey,
    required this.onNotificationTap,
  });

  @override
  _MyappBarState createState() => _MyappBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _MyappBarState extends State<MyappBar> {
  bool _isSearching = false;
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: _isSearching
          ? TextField(
              controller: _searchController,
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
              ),
              onSubmitted: (query) {
                // Perform the search action here
                print('Search query: $query');
              },
            )
          : Text(
              widget.title,
              textAlign: TextAlign.center,
            ),
      backgroundColor: Color.fromARGB(255, 14, 222, 212), // Set the background color here
      leading: IconButton(
        icon: Icon(
          _isSearching ? Icons.close : Icons.search,
          color: Colors.deepOrange,
        ),
        onPressed: () {
          setState(() {
            _isSearching = !_isSearching;
            if (!_isSearching) {
              _searchController.clear();
            }
          });
        },
      ),
      actions: <Widget>[
        IconButton(
          onPressed: widget.onNotificationTap,
          icon: Icon(
            Icons.doorbell_rounded,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
