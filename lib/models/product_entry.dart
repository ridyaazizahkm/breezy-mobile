// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String model;
    String pk;
    Fields fields;

    ProductEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;
    String ukuran;
    String aroma;
    String topNotes;
    String middleNotes;
    String baseNotes;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
        required this.ukuran,
        required this.aroma,
        required this.topNotes,
        required this.middleNotes,
        required this.baseNotes,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        ukuran: json["ukuran"],
        aroma: json["aroma"],
        topNotes: json["top_notes"],
        middleNotes: json["middle_notes"],
        baseNotes: json["base_notes"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "ukuran": ukuran,
        "aroma": aroma,
        "top_notes": topNotes,
        "middle_notes": middleNotes,
        "base_notes": baseNotes,
    };
}
