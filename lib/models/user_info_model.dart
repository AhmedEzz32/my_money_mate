class UserInfoModel{
  final String image;
  final String Function() title;
  final String subTitle;

  UserInfoModel(
    {required this.image, required this.title, required this.subTitle}
  );
}