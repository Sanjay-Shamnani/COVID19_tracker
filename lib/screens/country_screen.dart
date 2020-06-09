import 'package:corona_tracker/models/countries.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CountryScreen extends StatelessWidget {
  final Countries country;
  CountryScreen({Key key, this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        centerTitle: true,
        title: Text(country.country),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Image.network(
              'https://www.countryflags.io/${country.countryCode}/flat/64.png',
              width: MediaQuery.of(context).size.width / 3,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildDetailText(
            text: 'Confirmed',
            count: country.confirmed,
            color: Colors.red,
          ),
          buildDetailText(
            text: 'Active',
            count: country.active,
            color: Colors.lightBlueAccent,
          ),
          buildDetailText(
            text: 'Recovered',
            count: country.recovered,
            color: Colors.greenAccent[400],
          ),
          buildDetailText(
            text: 'Deaths',
            count: country.deaths,
            color: Colors.blueGrey[700],
          ),
        ],
      ),
    );
  }

  Widget buildDetailText({int count, Color color, String text}) {
    final formatter = NumberFormat.decimalPattern('en-US');
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        title: Text(
          '$text',
          style: TextStyle(
              color: color, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text('${formatter.format(count)}'),
      ),
    );
  }
}
