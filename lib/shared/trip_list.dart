import 'package:flutter/material.dart';
import 'package:heroanimation2509932017/models/trip.dart';
import 'package:heroanimation2509932017/screens/details.dart';

class trip_list extends StatefulWidget {
  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  final List<Widget> _tripTiles = [];
  final GlobalKey _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _addTrips();
  }

  void _addTrips() {
    // get data from db
    List<trip> _trips = [
      trip(title: 'Beach Paradise', price: '350', nights: '3', img: 'beach.png'),
      trip(title: 'City Break', price: '400', nights: '5', img: 'city.png'),
      trip(title: 'Ski Adventure', price: '750', nights: '2', img: 'ski.png'),
      trip(title: 'Space Blast', price: '600', nights: '4', img: 'space.png'),
    ];

    for (var trips in _trips) {
      _tripTiles.add(_buildTile(trips));
    }
  }

  Widget _buildTile(trip trip) {
    return ListTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Details(trip: trip)));
      },
      contentPadding: const EdgeInsets.all(25),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('${trip.nights} nights',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue[300])),
          Text(trip.title, style: TextStyle(fontSize: 20, color: Colors.grey[600])),
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Hero(
          tag: 'location-img-${trip.img}',
          child: Image.asset(
            'images/${trip.img}',
            height: 50.0,
          ),
        ),
      ),
      trailing: Text('\$${trip.price}'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: _listKey,
      itemCount: _tripTiles.length,
      itemBuilder: (context, index) {
        return _tripTiles[index];
      }
    );
  }
}