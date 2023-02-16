import 'dart:ui';

import 'package:contacts/ui/common/custom_icon.dart';
import 'package:contacts/ui/home/components/user_box.dart';
import 'package:contacts/ui/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:reorderable_grid/reorderable_grid.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          title: const Text("User List"),
          actions: viewModel.isBusy
              ? null
              : [
                  IconButton(
                    icon: CustomIcon(viewModel.ageSortIcon),
                    onPressed: viewModel.toggleAgeSort,
                  ),
                  IconButton(
                    icon: CustomIcon(viewModel.nameSortIcon),
                    onPressed: viewModel.toggleNameSort,
                  ),
                ],
        ),
        body: viewModel.isBusy
            ? const Center(child: CircularProgressIndicator())
            : ReorderableGridView.count(
                proxyDecorator: _proxyDecorator,
                padding: const EdgeInsets.all(20),
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                onReorder: viewModel.reorder,
                children: viewModel.data!
                    .map(
                      (user) => UserBox(
                        key: ValueKey(user.email),
                        user: user,
                      ),
                    )
                    .toList(),
              ),
      ),
    );
  }

  Widget _proxyDecorator(Widget child, int index, Animation<double> animation) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        final animValue = Curves.easeInOut.transform(animation.value);
        final elevation = lerpDouble(
          UserBox.initialElevation,
          12,
          animValue,
        );
        return Material(
          borderRadius: UserBox.borderRadius,
          elevation: elevation!,
          child: child,
        );
      },
      child: child,
    );
  }
}
