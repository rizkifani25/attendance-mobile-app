part of 'room_bloc.dart';

abstract class RoomState extends Equatable {
  const RoomState();

  @override
  List<Object> get props => [];
}

class RoomInitial extends RoomState {}

class RoomFetchLoading extends RoomState {}

class GetRoomHistorySuccess extends RoomState {
  final List<RoomDetail> roomDetail;

  GetRoomHistorySuccess({this.roomDetail});

  @override
  List<Object> get props => [roomDetail];
}

class RoomFetchingSuccess extends RoomState {
  final String message;

  RoomFetchingSuccess({this.message});

  @override
  List<Object> get props => [message];
}

class RoomFetchingFailure extends RoomState {
  final String message;

  RoomFetchingFailure({this.message});

  @override
  List<Object> get props => [message];
}
