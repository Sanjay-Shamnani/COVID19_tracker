import 'package:corona_tracker/models/corona_home.dart';
import 'package:corona_tracker/models/countries.dart';
import 'package:corona_tracker/screens/country_screen.dart';
import 'package:corona_tracker/services/networking.dart';
import 'package:corona_tracker/services/search_delegate.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  CoronaHome data;
  final formatter = NumberFormat.decimalPattern('en-US');
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        centerTitle: true,
        title: Text(
          'COVID19 Tracker',
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                  context: context,
                  delegate: OurSearchDelegate(myList: data.countries.toList()));
            },
          ),
        ],
      ),
      body: data == null
          ? Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: getData,
              color: Colors.indigoAccent,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverGrid(
                    delegate: SliverChildListDelegate([
                      buildSummaryCard(
                          text: 'Confirmed',
                          color: Colors.red,
                          count: data.confirmed),
                      buildSummaryCard(
                          text: 'Active',
                          color: Colors.lightBlueAccent,
                          count: data.active),
                      buildSummaryCard(
                          text: 'Recovered',
                          color: Colors.greenAccent[400],
                          count: data.recovered),
                      buildSummaryCard(
                          text: 'Deaths',
                          color: Colors.blueGrey[700],
                          count: data.deaths),
                    ]),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1.5),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Center(child: Text('Last Updated: ${data.date}')),
                      )
                    ]),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      var item = data.countries[index];
                      return buildExpansionTile(item);
                    }, childCount: data.countries.length),
                  ),
                ],
              ),
            ),
    );
  }

  Widget buildSummaryCard({int count, Color color, String text}) {
    return ScaleTransition(
      scale: Tween<double>(begin: 0, end: 1).animate(_controller),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                    color: color, fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                '${formatter.format(count)}',
                style: TextStyle(
                    color: color, fontWeight: FontWeight.bold, fontSize: 22),
              )
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildExpansionTile(Countries item) {
    return ListTile(
      leading: CountryPickerUtils.getDefaultFlagImage(
          Country(isoCode: item.countryCode)),
      title: Text('${item.country}'),
      trailing: Text('${formatter.format(item.confirmed)}'),
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CountryScreen(
                    country: item,
                  ))),
    );
  }

  Widget buildDetailText({int count, Color color, String text}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Text(
        '$text: ${formatter.format(count)}',
        style: TextStyle(color: color, fontSize: 16),
      ),
    );
  }

  Future<void> getData() async {
    Networking network = Networking();
    CoronaHome result = await network.getData();

    setState(() {
      data = result;
      if (data != null) {
        _controller.reset();
        _controller.forward();
      }
    });
  }
}
