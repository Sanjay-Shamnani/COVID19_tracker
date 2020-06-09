import 'package:corona_tracker/models/countries.dart';
import 'package:corona_tracker/screens/country_screen.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

class OurSearchDelegate extends SearchDelegate {
  final List<Countries> myList;

  OurSearchDelegate({this.myList});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear_all),
        onPressed: () => query = '',
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView(
        children: myList
            .where((element) =>
                element.country.toLowerCase().contains(query.toLowerCase()))
            .map<Widget>((e) => ListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CountryScreen(
                                country: e,
                              ))),
                  leading: CountryPickerUtils.getDefaultFlagImage(
                      Country(isoCode: e.countryCode)),
                  title: Text('${e.country}'),
                ))
            .toList());
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView(
        children: myList
            .where((element) =>
                element.country.toLowerCase().contains(query.toLowerCase()))
            .map<Widget>((e) => ListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CountryScreen(
                                country: e,
                              ))),
                  leading: CountryPickerUtils.getDefaultFlagImage(
                      Country(isoCode: e.countryCode)),
                  title: Text('${e.country}'),
                ))
            .toList());
  }
}
