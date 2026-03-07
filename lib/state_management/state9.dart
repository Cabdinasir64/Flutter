class UserProfile9 {
  final String name;
  final String email;
  final String image;

  UserProfile9({required this.name, required this.email, required this.image});
}

class UserApiService9 {
  Future<UserProfile9> fetchUserData() async {
    await Future.delayed(const Duration(seconds: 4));

    return UserProfile9(
      name: "Abdirahman Ali",
      email: "abdirahman@example.com",
      image: "https://via.placeholder.com/150",
    );
  }
}
