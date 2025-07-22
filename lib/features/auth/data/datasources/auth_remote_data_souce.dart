class AuthRemoteDataSource {
  Future<void> login(String email, String password) async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 1));
    print("Login success for $email");
  }
}
