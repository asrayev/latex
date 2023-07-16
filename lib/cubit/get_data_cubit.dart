import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';
import 'package:untitled2/data/model.dart';
import '../data/my_response.dart';
import '../model.dart';

part 'get_data_state.dart';

class GetDataCubit extends Cubit<GetDataState> {
  GetDataCubit() : super(GetDataInitial());


  TextEditingController newTextController = TextEditingController();

  getData({required int index}) async {
    emit(GettingDataInProgress());
    MyResponse myResponse = await ApiService().getAllChats(link: newTextController.text.length < 5 ?  "asasdasd" : newTextController.text,index: index );
    if (myResponse.error == "") {
      emit(GettingDataInSuccess(chats: myResponse.data));
    } else {
      emit(GettingDataInFailure(error: myResponse.error));
      print(myResponse.error);
    }
  }
}

class ApiService extends ApiClient {
  Future<MyResponse> getAllChats({required String link, required index }) async {
    MyResponse myResponse = MyResponse(error: "");
    String newLink  = link.substring(0, link.length - 1) + index.toString();
    print(newLink);
    try {
      Response response = await dio.get(
        "http://45.12.239.134/api/v1/question/1",
      );
      if (response.statusCode == 200) {
        print(response.data.toString());
        myResponse.data =DataModel.fromJson(response.data);
          //  response.data.map((e) => DataModel.fromJson(e)).toList();
      }
    } catch (e) {
      myResponse.error = e.toString();
      print(e.toString());
    }
    return myResponse;
  }
}

class ApiClient {
  ApiClient() {
    _init();
  }

  late Dio dio;

  _init() {
    dio = Dio();

    dio.interceptors.add(InterceptorsWrapper(
        onError: (DioError error, ErrorInterceptorHandler handler) {
          print("ERRORga TUSHDI");
          return handler.next(error);
        }, onRequest:
        (RequestOptions requestOptions, RequestInterceptorHandler handler) {
      print("SO'ROV YUBORILDI");
      String currentLocale = "uz";
      requestOptions.headers["Accept"] = "application/json";
      requestOptions.headers["Accept-Language"] =
      currentLocale.isEmpty ? "ru" : currentLocale;
      return handler.next(requestOptions);
    }, onResponse: (Response response, ResponseInterceptorHandler handler) {
      print("URAAA RESPONSE KELDI");
      return handler.next(response);
    }));
  }
}


