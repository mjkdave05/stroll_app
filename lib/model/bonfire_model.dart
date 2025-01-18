class User {
  final String name;
  final int age;
  final String profileImage;

  User({required this.name, required this.age, required this.profileImage});
}

class PollOption {
  final String option;
  final bool isSelected;

  PollOption({required this.option, this.isSelected = false});
}