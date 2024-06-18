import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:practices/feature/typedef/typedefs.dart';

final class SomeDataSource {
  Future<LoginResponseDTO> postLoginRequest(
    LoginRequestDTO loginRequestDTO,
  ) async {
    try {
      final raw = await http.post(
        Uri.dataFromString('https://some.com/login'),
        body: jsonEncode({
          // Accessing record params as you would access object members
          'username': loginRequestDTO.username,
          'password': loginRequestDTO.password,
        }),
      );
      final decoded = jsonDecode(raw.body);

      // returning record object
      return (
        didSuccess: decoded['didSuccess'],
        statusCode: raw.statusCode,
        message: decoded['message'],
      ) as LoginResponseDTO;
    } catch (e) {
      // returning record object
      return (
        didSuccess: false,
        statusCode: null,
        message: 'Error: $e',
      );
    }
  }
}

Future<void> makeRequest() async {
  final ds = SomeDataSource();
  // Providing record LoginRequestDTO
  final loginResDTO = await ds.postLoginRequest(
    (
      username: 'subscribe',
      password: 'my channel',
    ),
  );
  // Accessing record params as you would access object members
  print(loginResDTO.didSuccess);
  print(loginResDTO.message);
}
