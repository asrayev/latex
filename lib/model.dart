// // To parse this JSON data, do
// //
// //     final dataModel = dataModelFromJson(jsonString);
//
// import 'dart:convert';
//
// DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));
//
// String dataModelToJson(DataModel data) => json.encode(data.toJson());
//
// class DataModel {
//   List<Content> content;
//   Pageable pageable;
//   int totalPages;
//   int totalElements;
//   bool last;
//   int size;
//   int number;
//   Sort sort;
//   bool first;
//   int numberOfElements;
//   bool empty;
//
//   DataModel({
//     required this.content,
//     required this.pageable,
//     required this.totalPages,
//     required this.totalElements,
//     required this.last,
//     required this.size,
//     required this.number,
//     required this.sort,
//     required this.first,
//     required this.numberOfElements,
//     required this.empty,
//   });
//
//   factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
//     content: List<Content>.from(json["content"].map((x) => Content.fromJson(x))),
//     pageable: Pageable.fromJson(json["pageable"]),
//     totalPages: json["totalPages"],
//     totalElements: json["totalElements"],
//     last: json["last"],
//     size: json["size"],
//     number: json["number"],
//     sort: Sort.fromJson(json["sort"]),
//     first: json["first"],
//     numberOfElements: json["numberOfElements"],
//     empty: json["empty"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "content": List<dynamic>.from(content.map((x) => x.toJson())),
//     "pageable": pageable.toJson(),
//     "totalPages": totalPages,
//     "totalElements": totalElements,
//     "last": last,
//     "size": size,
//     "number": number,
//     "sort": sort.toJson(),
//     "first": first,
//     "numberOfElements": numberOfElements,
//     "empty": empty,
//   };
// }
//
// class Content {
//   String phoneNumber;
//   String voteDate;
//
//   Content({
//     required this.phoneNumber,
//     required this.voteDate,
//   });
//
//   factory Content.fromJson(Map<String, dynamic> json) => Content(
//     phoneNumber: json["phoneNumber"],
//     voteDate: json["voteDate"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "phoneNumber": phoneNumber,
//     "voteDate": voteDate,
//   };
// }
//
// class Pageable {
//   Sort sort;
//   int offset;
//   int pageNumber;
//   int pageSize;
//   bool paged;
//   bool unpaged;
//
//   Pageable({
//     required this.sort,
//     required this.offset,
//     required this.pageNumber,
//     required this.pageSize,
//     required this.paged,
//     required this.unpaged,
//   });
//
//   factory Pageable.fromJson(Map<String, dynamic> json) => Pageable(
//     sort: Sort.fromJson(json["sort"]),
//     offset: json["offset"],
//     pageNumber: json["pageNumber"],
//     pageSize: json["pageSize"],
//     paged: json["paged"],
//     unpaged: json["unpaged"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "sort": sort.toJson(),
//     "offset": offset,
//     "pageNumber": pageNumber,
//     "pageSize": pageSize,
//     "paged": paged,
//     "unpaged": unpaged,
//   };
// }
//
// class Sort {
//   bool sorted;
//   bool unsorted;
//   bool empty;
//
//   Sort({
//     required this.sorted,
//     required this.unsorted,
//     required this.empty,
//   });
//
//   factory Sort.fromJson(Map<String, dynamic> json) => Sort(
//     sorted: json["sorted"],
//     unsorted: json["unsorted"],
//     empty: json["empty"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "sorted": sorted,
//     "unsorted": unsorted,
//     "empty": empty,
//   };
// }
