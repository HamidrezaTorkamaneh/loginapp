import 'package:dio/dio.dart';

class LoginData {
  String phoneNumber;
  String email;

  LoginData(this.email, this.phoneNumber);

  LoginData.fromJson(dynamic json)
      : phoneNumber = json['phoneNumber'],
        email = json['email'];
}

class HttpClient {
  static Dio dio = Dio(
    BaseOptions(baseUrl: 'https://api.12application.ir/v1/user/'),
  );
}

Future<LoginData> loginPhone(String phoneNumber) async {
  final response = await HttpClient.dio.post('userApi/loginMobile/', data: {
    "phoneNumber": phoneNumber,
  });
  if (response.statusCode == 200) {
    return LoginData.fromJson(response.data);
  } else {
    throw Exception();
  }
}

Future<LoginData> loginEmail(String email) async {
  var reponse =
      await HttpClient.dio.post('userApi/loginEmail/', data: {"email": email});
  if (reponse.statusCode == 200) {
    return LoginData.fromJson(reponse.data);
  } else {
    throw Exception();
  }
}

Future<LoginData> verifyNumber(String phoneNumbre, int code)async{
  final response= await HttpClient.dio.post('verifyCodeApi/sendVerifyCode/',data: {
    "phoneNumber":phoneNumbre,
    "verifyCode": code
  });
  if(response.statusCode==200){
    return LoginData.fromJson(response.data);
  }else{
    throw Exception();
  }
}

Future<LoginData> verifyEmail(String email, int code)async{
  final response= await HttpClient.dio.post('/userApi/loginOtpEmail/',data: {
    "email": email,
    "otpCode": code
  });
  if(response.statusCode==200){
    return LoginData.fromJson(response.data);

  }else{
    throw Exception();
  }
}
