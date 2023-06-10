import 'package:flutter/material.dart';

void main() {
  runApp(PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PhotoGalleryScreen(),
    );
  }
}

class PhotoGalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for photos',
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showSnackBar(context, 'Clicked on photo 1!');
                  },
                  child: Column(
                    children: [
                      Image.network(
                        'https://freepngimg.com/thumb/tree/1-tree-png-image-download-picture.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 8.0),
                      Text('Photo 1'),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showSnackBar(context, 'Clicked on photo 2!');
                  },
                  child: Column(
                    children: [
                      Image.network(
                        'https://freepngimg.com/thumb/tree/12-tree-png-image-download-picture.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 8.0),
                      Text('Photo 2'),
                    ],
                  ),
                ),
                // Add more photos as needed
              ],
            ),
            SizedBox(height: 16.0),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Photo 1'),
                  subtitle: Text('Description for Photo 1'),
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Photo 2'),
                  subtitle: Text('Description for Photo 2'),
                ),
                // Add more list items as needed
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSnackBar(context, 'Photos Uploaded Successfully!');
        },
        child: Icon(Icons.cloud_upload),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
