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
        primarySwatch: Colors.deepOrange,
        useMaterial3: false,
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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Welcome to My Photo Gallery!',
                textAlign: TextAlign.center,
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
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for photos',
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
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
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: ElevatedButton(
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
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          showSnackBar(context, 'Clicked on photo 3!');
                        },
                        child: Column(
                          children: [
                            Image.network(
                              'https://freepngimg.com/thumb/tree/11-tree-png-image-download-picture.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8.0),
                            Text('Photo 3'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          showSnackBar(context, 'Clicked on photo 4!');
                        },
                        child: Column(
                          children: [
                            Image.network(
                              'https://freepngimg.com/thumb/tree/3-tree-png-image-download-picture.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8.0),
                            Text('Photo 4'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          showSnackBar(context, 'Clicked on photo 5!');
                        },
                        child: Column(
                          children: [
                            Image.network(
                              'https://freepngimg.com/thumb/tree/23-tree-png-image-download-picture.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8.0),
                            Text('Photo 5'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          showSnackBar(context, 'Clicked on photo 6!');
                        },
                        child: Column(
                          children: [
                            Image.network(
                              'https://freepngimg.com/thumb/mountain/1-2-mountain-png-picture.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 8.0),
                            Text('Photo 6'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Photo 3'),
                  subtitle: Text('Description for Photo 3'),
                ),
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
