import 'package:attendance/models/models.dart';

class OutStudent {
  String image;
  String time;
  PositionStudent positionStudent;
  double distance;

  OutStudent({this.image, this.time, this.positionStudent, this.distance});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['image'] = this.image ?? '-';
    data['time'] = this.time ?? '-';
    data['position'] = this.positionStudent;
    data['distance'] = this.distance ?? 0.0;
    return data;
  }

  factory OutStudent.fromJson(Map<String, dynamic> json) {
    return OutStudent(
      image: json['image'] ?? '-',
      time: json['time'] ?? '-',
      positionStudent: PositionStudent.fromJson(json['position']),
      distance: json['distance'].toDouble() ?? 0.0,
    );
  }

  @override
  String toString() {
    return 'OutStudent(image: $image, time: $time, positionStudent: $positionStudent, distance: $distance)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is OutStudent && o.image == image && o.time == time && o.positionStudent == positionStudent && o.distance == distance;
  }

  @override
  int get hashCode {
    return image.hashCode ^ time.hashCode ^ positionStudent.hashCode ^ distance.hashCode;
  }
}
