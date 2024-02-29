import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/ui/common/ui_helpers.dart';

import 'user_viewmodel.dart';

class UserView extends StackedView<UserViewModel> {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UserViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 141, 139, 139),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Center(
              child: Column(
               
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      children: [
                        const Text(
                          'User List',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        verticalSpaceMedium,
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: MaterialButton(
                            color: const Color.fromARGB(255, 6, 86, 152),
                            onPressed: () => viewModel.navigateback(),
                            child: const Text(
                              "Back",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        MaterialButton(
                          color: const Color.fromARGB(255, 6, 86, 152),
                          onPressed: () => viewModel.getUsersFromService(),
                          child: const Text(
                            "Get Users",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 480,
                          child: ListView.builder(
                            itemCount: viewModel.users.length,
                            itemBuilder: (context, index) => Container(
                              padding: const EdgeInsets.all(8.0),
                              margin: const EdgeInsets.symmetric(vertical: 4.0),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 201, 202, 203),
                                border: Border.all(color: const Color.fromARGB(255, 3, 30, 71)), // Dark blue border
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: ListTile(
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('ID: ${viewModel.users[index].id}'),
                                            ],
                                          ),
                                        ),
                                        Container(width: 8), // Separator
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Name: ${viewModel.users[index].name}'),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8), // Vertical space between rows
                                    Flexible(
                                      child: Text(viewModel.addressFromUser(viewModel.users[index]),
                                    overflow: TextOverflow
                                    .visible,
                                    ),
                                    ),
                                 //   .users[index].address.street}, ${viewModel.users[index].address.suite}, ${viewModel.users[index].address.city}, ${viewModel.users[index].address.zipcode}'),
                                    const SizedBox(height: 8), // Vertical space between rows
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Email: ${viewModel.users[index].email}'),
                                            ],
                                          ),
                                        ),
                                        Container(width: 8), // Separator
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Phone: ${viewModel.users[index].phone}'),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  UserViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UserViewModel();
}