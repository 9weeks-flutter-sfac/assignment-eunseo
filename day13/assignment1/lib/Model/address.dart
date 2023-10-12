// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// import 'dart:convert';

// class Address {
//   int id;
//   String uid;
//   String city;
//   String streetName;
//   String streetAddress;
//   String secondaryAddress;
//   String buildingNumber;
//   String mailBox;
//   String community;
//   String zipCode;
//   String zip;
//   String postcode;
//   String timeZone;
//   String streetSuffix;
//   String citySuffix;
//   String cityPrefix;
//   String state;
//   String stateAbbr;
//   String countryCode;
//   String country;
//   String latitude;
//   String longitude;
//   String fullAddress;
//   Address({
//     required this.id,
//     required this.uid,
//     required this.city,
//     required this.streetName,
//     required this.streetAddress,
//     required this.secondaryAddress,
//     required this.buildingNumber,
//     required this.mailBox,
//     required this.community,
//     required this.zipCode,
//     required this.zip,
//     required this.postcode,
//     required this.timeZone,
//     required this.streetSuffix,
//     required this.citySuffix,
//     required this.cityPrefix,
//     required this.state,
//     required this.stateAbbr,
//     required this.countryCode,
//     required this.country,
//     required this.latitude,
//     required this.longitude,
//     required this.fullAddress,
//   });

//   Address copyWith({
//     int? id,
//     String? uid,
//     String? city,
//     String? streetName,
//     String? streetAddress,
//     String? secondaryAddress,
//     String? buildingNumber,
//     String? mailBox,
//     String? community,
//     String? zipCode,
//     String? zip,
//     String? postcode,
//     String? timeZone,
//     String? streetSuffix,
//     String? citySuffix,
//     String? cityPrefix,
//     String? state,
//     String? stateAbbr,
//     String? countryCode,
//     String? country,
//     String? latitude,
//     String? longitude,
//     String? fullAddress,
//   }) {
//     return Address(
//       id: id ?? this.id,
//       uid: uid ?? this.uid,
//       city: city ?? this.city,
//       streetName: streetName ?? this.streetName,
//       streetAddress: streetAddress ?? this.streetAddress,
//       secondaryAddress: secondaryAddress ?? this.secondaryAddress,
//       buildingNumber: buildingNumber ?? this.buildingNumber,
//       mailBox: mailBox ?? this.mailBox,
//       community: community ?? this.community,
//       zipCode: zipCode ?? this.zipCode,
//       zip: zip ?? this.zip,
//       postcode: postcode ?? this.postcode,
//       timeZone: timeZone ?? this.timeZone,
//       streetSuffix: streetSuffix ?? this.streetSuffix,
//       citySuffix: citySuffix ?? this.citySuffix,
//       cityPrefix: cityPrefix ?? this.cityPrefix,
//       state: state ?? this.state,
//       stateAbbr: stateAbbr ?? this.stateAbbr,
//       countryCode: countryCode ?? this.countryCode,
//       country: country ?? this.country,
//       latitude: latitude ?? this.latitude,
//       longitude: longitude ?? this.longitude,
//       fullAddress: fullAddress ?? this.fullAddress,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'uid': uid,
//       'city': city,
//       'streetName': streetName,
//       'streetAddress': streetAddress,
//       'secondaryAddress': secondaryAddress,
//       'buildingNumber': buildingNumber,
//       'mailBox': mailBox,
//       'community': community,
//       'zipCode': zipCode,
//       'zip': zip,
//       'postcode': postcode,
//       'timeZone': timeZone,
//       'streetSuffix': streetSuffix,
//       'citySuffix': citySuffix,
//       'cityPrefix': cityPrefix,
//       'state': state,
//       'stateAbbr': stateAbbr,
//       'countryCode': countryCode,
//       'country': country,
//       'latitude': latitude,
//       'longitude': longitude,
//       'fullAddress': fullAddress,
//     };
//   }

//   factory Address.fromMap(Map<String, dynamic> map) {
//     return Address(
//       id: map['id'] as int,
//       uid: map['uid'] as String,
//       city: map['city'] as String,
//       streetName: map['streetName'] as String,
//       streetAddress: map['streetAddress'] as String,
//       secondaryAddress: map['secondaryAddress'] as String,
//       buildingNumber: map['buildingNumber'] as String,
//       mailBox: map['mailBox'] as String,
//       community: map['community'] as String,
//       zipCode: map['zipCode'] as String,
//       zip: map['zip'] as String,
//       postcode: map['postcode'] as String,
//       timeZone: map['timeZone'] as String,
//       streetSuffix: map['streetSuffix'] as String,
//       citySuffix: map['citySuffix'] as String,
//       cityPrefix: map['cityPrefix'] as String,
//       state: map['state'] as String,
//       stateAbbr: map['stateAbbr'] as String,
//       countryCode: map['countryCode'] as String,
//       country: map['country'] as String,
//       latitude: map['latitude'] as String,
//       longitude: map['longitude'] as String,
//       fullAddress: map['fullAddress'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Address.fromJson(String source) =>
//       Address.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Address(id: $id, uid: $uid, city: $city, streetName: $streetName, streetAddress: $streetAddress, secondaryAddress: $secondaryAddress, buildingNumber: $buildingNumber, mailBox: $mailBox, community: $community, zipCode: $zipCode, zip: $zip, postcode: $postcode, timeZone: $timeZone, streetSuffix: $streetSuffix, citySuffix: $citySuffix, cityPrefix: $cityPrefix, state: $state, stateAbbr: $stateAbbr, countryCode: $countryCode, country: $country, latitude: $latitude, longitude: $longitude, fullAddress: $fullAddress)';
//   }

//   @override
//   bool operator ==(covariant Address other) {
//     if (identical(this, other)) return true;

//     return other.id == id &&
//         other.uid == uid &&
//         other.city == city &&
//         other.streetName == streetName &&
//         other.streetAddress == streetAddress &&
//         other.secondaryAddress == secondaryAddress &&
//         other.buildingNumber == buildingNumber &&
//         other.mailBox == mailBox &&
//         other.community == community &&
//         other.zipCode == zipCode &&
//         other.zip == zip &&
//         other.postcode == postcode &&
//         other.timeZone == timeZone &&
//         other.streetSuffix == streetSuffix &&
//         other.citySuffix == citySuffix &&
//         other.cityPrefix == cityPrefix &&
//         other.state == state &&
//         other.stateAbbr == stateAbbr &&
//         other.countryCode == countryCode &&
//         other.country == country &&
//         other.latitude == latitude &&
//         other.longitude == longitude &&
//         other.fullAddress == fullAddress;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//         uid.hashCode ^
//         city.hashCode ^
//         streetName.hashCode ^
//         streetAddress.hashCode ^
//         secondaryAddress.hashCode ^
//         buildingNumber.hashCode ^
//         mailBox.hashCode ^
//         community.hashCode ^
//         zipCode.hashCode ^
//         zip.hashCode ^
//         postcode.hashCode ^
//         timeZone.hashCode ^
//         streetSuffix.hashCode ^
//         citySuffix.hashCode ^
//         cityPrefix.hashCode ^
//         state.hashCode ^
//         stateAbbr.hashCode ^
//         countryCode.hashCode ^
//         country.hashCode ^
//         latitude.hashCode ^
//         longitude.hashCode ^
//         fullAddress.hashCode;
//   }
// }

class Address {
  int id;
  String uid;
  String city;
  String street_name;
  String street_address;
  String secondary_address;
  String building_number;
  String mail_box;
  String community;
  String zip_code;
  String zip;
  String postcode;
  String time_zone;
  String street_suffix;
  String city_suffix;
  String city_prefix;
  String state;
  String state_abbr;
  String country;
  String country_code;
  String latitude;
  String longitude;
  String full_address;
  Address({
    required this.id,
    required this.uid,
    required this.city,
    required this.street_name,
    required this.street_address,
    required this.secondary_address,
    required this.building_number,
    required this.mail_box,
    required this.community,
    required this.zip_code,
    required this.zip,
    required this.postcode,
    required this.time_zone,
    required this.street_suffix,
    required this.city_suffix,
    required this.city_prefix,
    required this.state,
    required this.state_abbr,
    required this.country,
    required this.country_code,
    required this.latitude,
    required this.longitude,
    required this.full_address,
  });

  Address copyWith({
    int? id,
    String? uid,
    String? city,
    String? street_name,
    String? street_address,
    String? secondary_address,
    String? building_number,
    String? mail_box,
    String? community,
    String? zip_code,
    String? zip,
    String? postcode,
    String? time_zone,
    String? street_suffix,
    String? city_suffix,
    String? city_prefix,
    String? state,
    String? state_abbr,
    String? country,
    String? country_code,
    String? latitude,
    String? longitude,
    String? full_address,
  }) {
    return Address(
      id: id ?? this.id,
      uid: uid ?? this.uid,
      city: city ?? this.city,
      street_name: street_name ?? this.street_name,
      street_address: street_address ?? this.street_address,
      secondary_address: secondary_address ?? this.secondary_address,
      building_number: building_number ?? this.building_number,
      mail_box: mail_box ?? this.mail_box,
      community: community ?? this.community,
      zip_code: zip_code ?? this.zip_code,
      zip: zip ?? this.zip,
      postcode: postcode ?? this.postcode,
      time_zone: time_zone ?? this.time_zone,
      street_suffix: street_suffix ?? this.street_suffix,
      city_suffix: city_suffix ?? this.city_suffix,
      city_prefix: city_prefix ?? this.city_prefix,
      state: state ?? this.state,
      state_abbr: state_abbr ?? this.state_abbr,
      country: country ?? this.country,
      country_code: country_code ?? this.country_code,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      full_address: full_address ?? this.full_address,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'uid': uid,
      'city': city,
      'street_name': street_name,
      'street_address': street_address,
      'secondary_address': secondary_address,
      'building_number': building_number,
      'mail_box': mail_box,
      'community': community,
      'zip_code': zip_code,
      'zip': zip,
      'postcode': postcode,
      'time_zone': time_zone,
      'street_suffix': street_suffix,
      'city_suffix': city_suffix,
      'city_prefix': city_prefix,
      'state': state,
      'state_abbr': state_abbr,
      'country': country,
      'country_code': country_code,
      'latitude': latitude,
      'longitude': longitude,
      'full_address': full_address,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      id: map['id'] as int,
      uid: map['uid'] as String,
      city: map['city'] as String,
      street_name: map['street_name'] as String,
      street_address: map['street_address'] as String,
      secondary_address: map['secondary_address'] as String,
      building_number: map['building_number'] as String,
      mail_box: map['mail_box'] as String,
      community: map['community'] as String,
      zip_code: map['zip_code'] as String,
      zip: map['zip'] as String,
      postcode: map['postcode'] as String,
      time_zone: map['time_zone'] as String,
      street_suffix: map['street_suffix'] as String,
      city_suffix: map['city_suffix'] as String,
      city_prefix: map['city_prefix'] as String,
      state: map['state'] as String,
      state_abbr: map['state_abbr'] as String,
      country: map['country'] as String,
      country_code: map['country_code'] as String,
      latitude: map['latitude'] as String,
      longitude: map['longitude'] as String,
      full_address: map['full_address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Address.fromJson(String source) =>
      Address.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Address(id: $id, uid: $uid, city: $city, street_name: $street_name, street_address: $street_address, secondary_address: $secondary_address, building_number: $building_number, mail_box: $mail_box, community: $community, zip_code: $zip_code, zip: $zip, postcode: $postcode, time_zone: $time_zone, street_suffix: $street_suffix, city_suffix: $city_suffix, city_prefix: $city_prefix, state: $state, state_abbr: $state_abbr, country: $country, country_code: $country_code, latitude: $latitude, longitude: $longitude, full_address: $full_address)';
  }

  @override
  bool operator ==(covariant Address other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.uid == uid &&
        other.city == city &&
        other.street_name == street_name &&
        other.street_address == street_address &&
        other.secondary_address == secondary_address &&
        other.building_number == building_number &&
        other.mail_box == mail_box &&
        other.community == community &&
        other.zip_code == zip_code &&
        other.zip == zip &&
        other.postcode == postcode &&
        other.time_zone == time_zone &&
        other.street_suffix == street_suffix &&
        other.city_suffix == city_suffix &&
        other.city_prefix == city_prefix &&
        other.state == state &&
        other.state_abbr == state_abbr &&
        other.country == country &&
        other.country_code == country_code &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.full_address == full_address;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        uid.hashCode ^
        city.hashCode ^
        street_name.hashCode ^
        street_address.hashCode ^
        secondary_address.hashCode ^
        building_number.hashCode ^
        mail_box.hashCode ^
        community.hashCode ^
        zip_code.hashCode ^
        zip.hashCode ^
        postcode.hashCode ^
        time_zone.hashCode ^
        street_suffix.hashCode ^
        city_suffix.hashCode ^
        city_prefix.hashCode ^
        state.hashCode ^
        state_abbr.hashCode ^
        country.hashCode ^
        country_code.hashCode ^
        latitude.hashCode ^
        longitude.hashCode ^
        full_address.hashCode;
  }
}
