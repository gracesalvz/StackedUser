import 'package:stacked/stacked.dart';
import 'package:stacked_app/app/app.locator.dart';
import 'package:stacked_app/model/user.dart';
import 'package:stacked_app/services/user_service.dart';
import 'package:stacked_services/stacked_services.dart';


class UserViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _usersService = locator<UserService>();

  List<User> _users = [];

  List<User> get users => _users;

  getUsersFromService() async {
    _users = await _usersService.getUsers();
    rebuildUi();
  }

  String addressFromUser(User user){
    return 'Address: ${user.address.street}, ${user.address.suite}, ${user.address.city}, ${user.address.zipcode}';
  }

  navigateback() {
    _navigationService.back();
  }

}
