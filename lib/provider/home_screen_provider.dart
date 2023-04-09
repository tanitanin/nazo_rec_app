import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/nazotoki_entry.dart';

class HomeScreenProvider {
  List<NazotokiEntry> nazoEntryList = [];
  int count = 0;

  Future<void> fetchNaotokiEntries() async {
    final memoCollection =
        await FirebaseFirestore.instance.collection('/NazotokiEntry').get();
    final docs = memoCollection.docs;
    for (var doc in docs) {
      NazotokiEntry fetchedNazotokiEntries = NazotokiEntry(
        id: doc.data()['id'],
        name: doc.data()['name'],
        address: doc.data()['address'],
        description: doc.data()['description'],
        imageUrl: doc.data()['imageUrl'],
        lat: doc.data()['lat'],
        lng: doc.data()['lng'],
        url: doc.data()['url'],
        createdDate: doc.data()['createdDate'],
      );
      nazoEntryList.add(fetchedNazotokiEntries);
    }
  }
}
