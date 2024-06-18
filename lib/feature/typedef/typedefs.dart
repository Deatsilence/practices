typedef StringReferance = String;
typedef Strings = Iterable<String>;
typedef LoginRequestDTO = ({String username, String password});
typedef LoginResponseDTO = ({
  bool didSuccess,
  int? statusCode,
  String? message,
});
typedef ProductCountChangedCallback = void Function(int quantity);
