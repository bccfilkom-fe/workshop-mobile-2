abstract class Repository {
  Future<bool> signIn(
    String name,
    String password,
  );
  Future<Map<String, String>> signUp(
    String name,
    String password,
  );
}
