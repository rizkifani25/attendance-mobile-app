import 'package:attendance/data/dataproviders/dataproviders.dart';
import 'package:attendance/models/models.dart';
import 'package:attendance/ui/logic/service/service.dart';
import 'package:flutter/material.dart';

class StudentRepository {
  final AttendanceApi attendanceApi;
  StudentRepository({@required this.attendanceApi});

  Future<BasicResponse> signInStudent(String studentId, String password) async {
    BasicResponse basicResponse = await attendanceApi.loginStudent(studentId, password);
    return basicResponse;
  }

  Future<BasicResponse> getStudentLoginInfo(String studentId) async {
    BasicResponse basicResponse = await attendanceApi.findStudent(studentId);
    return basicResponse;
  }

  Future<Student> signOutStudent() async {
    SessionManagerService().setStudent(null);
    return null;
  }

  Future<BasicResponse> studentDoUpdate(Student student) async {
    BasicResponse basicResponse = await attendanceApi.studentDoUpdate(student);
    return basicResponse;
  }

  Future<BasicResponse> studentDoPermission(Permission _permission, String _roomId, String _studentId, String _time) async {
    BasicResponse basicResponse = await attendanceApi.studentDoPermission(_permission, _roomId, _studentId, _time);
    return basicResponse;
  }

  Future<BasicResponse> studentDoAttend(AttendStudent _attendStudent, String _roomId, String _studentId, String _time) async {
    BasicResponse basicResponse = await attendanceApi.studentDoAttend(_attendStudent, _roomId, _studentId, _time);
    return basicResponse;
  }

  Future<BasicResponse> studentDoOut(OutStudent _outStudent, String _roomId, String _studentId, String _time) async {
    BasicResponse basicResponse = await attendanceApi.studentDoOut(_outStudent, _roomId, _studentId, _time);
    return basicResponse;
  }
}
