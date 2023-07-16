part of 'get_data_cubit.dart';

@immutable
abstract class GetDataState {}

class GetDataInitial extends GetDataState {}
class GettingDataInProgress extends GetDataState{}
// ignore: must_be_immutable
class GettingDataInFailure extends GetDataState{
  String error;
  GettingDataInFailure({required this.error});
}
// ignore: must_be_immutable
class GettingDataInSuccess extends GetDataState{
  DataModel chats;

  GettingDataInSuccess({required this.chats});
}