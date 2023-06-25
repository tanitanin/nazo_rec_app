import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/nazotoki_event.dart';

final homeScreenProvider = Provider((ref) => HomeScreenProvider());

class HomeScreenProvider {
  List<NazotokiEvent> nazoEntryList = [];
  int count = 0;

  Future<void> fetchNaotokiEntries() async {
    final memoCollection =
        await FirebaseFirestore.instance.collection('/NazotokiEntry').get();
    final docs = memoCollection.docs;
    for (var doc in docs) {
      NazotokiEvent fetchedNazotokiEvents = NazotokiEvent(
        id: doc.data()['id'],
        name: doc.data()['name'],
        publisher: doc.data()['url'],
        place: doc.data()['place'],
        eventType: doc.data()['eventType'],
        description: doc.data()['description'],
        imageUrl: doc.data()['imageUrl'],
        eventUrl: doc.data()['eventUrl'],
        elapseTime: doc.data()['elapseTime'],
        isRepeatable: doc.data()['isRepeatable'],
        createdAt: doc.data()['createdAt'],
        updatedAt: doc.data()['updatedAt'],
      );
      nazoEntryList.add(fetchedNazotokiEvents);
    }
  }
}
