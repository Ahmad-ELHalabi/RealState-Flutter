import 'package:flutter/material.dart';
import 'package:realstateflutter/models/item_model.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen(this.item, {Key? key}) : super(key: key);
  final Item item;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFavorite = false; // Added variable to track the checkbox state
  int rating = -1; // Added variable to track the selected rating

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blueAccent),
        title: Text(
          widget.item.title!,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(widget.item.thumb_url!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              widget.item.category!,
              style: TextStyle(
                color: Colors.blue.shade600,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              widget.item.title!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                Text(
                  widget.item.location!,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${widget.item.price}\$ /Month",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isFavorite,
                      onChanged: (value) {
                        setState(() {
                          isFavorite = value!;
                        });
                      },
                    ),
                    Text(
                      'Add to Favorites', // Your meaningful text label
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Please rate this state on a scale from very bad to very good.',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RadioListTile<int>(
                  title: Text('Very Bad'),
                  value: 0,
                  groupValue: rating,
                  onChanged: (value) {
                    setState(() {
                      rating = value!;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text('Bad'),
                  value: 1,
                  groupValue: rating,
                  onChanged: (value) {
                    setState(() {
                      rating = value!;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text('Fine'),
                  value: 2,
                  groupValue: rating,
                  onChanged: (value) {
                    setState(() {
                      rating = value!;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text('Good'),
                  value: 3,
                  groupValue: rating,
                  onChanged: (value) {
                    setState(() {
                      rating = value!;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: Text('Very Good'),
                  value: 4,
                  groupValue: rating,
                  onChanged: (value) {
                    setState(() {
                      rating = value!;
                    });
                  },
                ),
              ],
            ),
            Expanded(child: Container()),
            Container(
              width: double.infinity,
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: RawMaterialButton(
                onPressed: () {},
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                fillColor: Colors.blue.shade600,
                child: Text(
                  "Rent Now",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
