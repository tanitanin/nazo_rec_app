// 謎解きの公演情報を格納するモデル
class NazotokiEntry {
  final String id;
  final String name;
  final String address;
  final String description;
  final String imageUrl;
  final String lat;
  final String lng;
  final String url;
  final DateTime createdDate;

  NazotokiEntry({
    required this.id,
    required this.name,
    required this.address,
    required this.description,
    required this.imageUrl,
    required this.lat,
    required this.lng,
    required this.url,
    required this.createdDate,
  });

  factory NazotokiEntry.fromJson(Map<String, dynamic> json) {
    return NazotokiEntry(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      lat: json['lat'],
      lng: json['lng'],
      url: json['url'],
      createdDate: json['createdDate'],
    );
  }
}
