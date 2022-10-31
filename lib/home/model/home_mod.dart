// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required  this.status,
    required  this.message,
    required this.data,
  });

  int status;
  String message;
  Data data;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    status: json["status"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    required  this.projects,
    required  this.cities,
    required  this.properties,
    required  this.propertiesMinPrice,
    required   this.propertiesMaxPrice,
    required  this.propertiesMinArea,
    required  this.propertiesMaxArea,
  });

  List<Project> projects;
  List<City> cities;
  List<Property> properties;
  int propertiesMinPrice;
  int propertiesMaxPrice;
  int propertiesMinArea;
  int propertiesMaxArea;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    projects: List<Project>.from(json["projects"].map((x) => Project.fromJson(x))),
    cities: List<City>.from(json["cities"].map((x) => City.fromJson(x))),
    properties: List<Property>.from(json["properties"].map((x) => Property.fromJson(x))),
    propertiesMinPrice: json["properties_min_price"],
    propertiesMaxPrice: json["properties_max_price"],
    propertiesMinArea: json["properties_min_area"],
    propertiesMaxArea: json["properties_max_area"],
  );

  Map<String, dynamic> toJson() => {
    "projects": List<dynamic>.from(projects.map((x) => x.toJson())),
    "cities": List<dynamic>.from(cities.map((x) => x.toJson())),
    "properties": List<dynamic>.from(properties.map((x) => x.toJson())),
    "properties_min_price": propertiesMinPrice,
    "properties_max_price": propertiesMaxPrice,
    "properties_min_area": propertiesMinArea,
    "properties_max_area": propertiesMaxArea,
  };
}

class City{
  City({
    required  this.id,
    this.name,
    required  this.isFeatured,
    required  this.image,
    required  this.governorate,
  });

  int id;
  dynamic name;
  bool isFeatured;
  String image;
  Governorate governorate;

  factory City.fromJson(Map<String, dynamic> json) => City(
    id: json["id"],
    name: json["name"],
    isFeatured: json["is_featured"],
    image: json["image"],
    governorate: Governorate.fromJson(json["governorate"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "is_featured": isFeatured,
    "image": image,
    "governorate": governorate.toJson(),
  };
}

class Governorate {
  Governorate({
    required  this.id,
    this.name,
  });

  int id;
  dynamic name;

  factory Governorate.fromJson(Map<String, dynamic> json) => Governorate(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

class Project {
  Project({
    required   this.id,
    this.name,
    required   this.isFeatured,
    this.city,
    required  this.devolper,
    required this.activityTypes,
    required this.image,
  });

  int id;
  dynamic name;
  bool isFeatured;
  dynamic city;
  String devolper;
  List<dynamic> activityTypes;
  String image;

  factory Project.fromJson(Map<String, dynamic> json) => Project(
    id: json["id"],
    name: json["name"],
    isFeatured: json["is_featured"],
    city: json["city"],
    devolper: json["devolper"],
    activityTypes: List<dynamic>.from(json["activity_types"].map((x) => x)),
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "is_featured": isFeatured,
    "city": city,
    "devolper": devolper,
    "activity_types": List<dynamic>.from(activityTypes.map((x) => x)),
    "image": image,
  };
}

class Property {
  Property({
    required  this.id,
    required  this.name,
    required  this.type,
    required  this.price,
    this.city,
    required this.views,
    required this.clicked,
    required this.rentType,
    required this.activityType,
    required  this.area,
    required   this.room,
    required   this.bathroom,
    required  this.guest,
    required  this.availability,
    required  this.isFeatured,
    required  this.rental,
    required this.lat,
    required this.lng,
    required this.furnished,
    required this.isFavourites,
    required this.noteId,
    required this.note,
    required this.createdAt,
    required this.expireAt,
    required this.image,
  });

  int id;
  String name;
  String type;
  int price;
  dynamic city;
  int views;
  int clicked;
  int rentType;
  int activityType;
  int area;
  int room;
  int bathroom;
  int guest;
  DateTime availability;
  bool isFeatured;
  int rental;
  String lat;
  String lng;
  int furnished;
  bool isFavourites;
  int noteId;
  String note;
  DateTime createdAt;
  DateTime expireAt;
  String image;

  factory Property.fromJson(Map<String, dynamic> json) => Property(
    id: json["id"],
    name: json["name"],
    type: json["type"],
    price: json["price"],
    city: json["city"],
    views: json["views"],
    clicked: json["clicked"],
    rentType: json["rent_type"],
    activityType: json["activity_type"],
    area: json["area"],
    room: json["room"],
    bathroom: json["bathroom"],
    guest: json["guest"],
    availability: DateTime.parse(json["availability"]),
    isFeatured: json["is_featured"],
    rental: json["rental"] == null ? null : json["rental"],
    lat: json["lat"],
    lng: json["lng"],
    furnished: json["furnished"],
    isFavourites: json["is_favourites"],
    noteId: json["note_id"],
    note: json["note"],
    createdAt: DateTime.parse(json["created_at"]),
    expireAt: DateTime.parse(json["expire_at"]),
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "type": type,
    "price": price,
    "city": city,
    "views": views,
    "clicked": clicked,
    "rent_type": rentType,
    "activity_type": activityType,
    "area": area,
    "room": room,
    "bathroom": bathroom,
    "guest": guest,
    "availability": "${availability.year.toString().padLeft(4, '0')}-${availability.month.toString().padLeft(2, '0')}-${availability.day.toString().padLeft(2, '0')}",
    "is_featured": isFeatured,
    "rental": rental == null ? null : rental,
    "lat": lat,
    "lng": lng,
    "furnished": furnished,
    "is_favourites": isFavourites,
    "note_id": noteId,
    "note": note,
    "created_at": createdAt.toIso8601String(),
    "expire_at": expireAt.toIso8601String(),
    "image": image,
  };
}
