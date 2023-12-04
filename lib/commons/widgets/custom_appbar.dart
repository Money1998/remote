import 'package:flutter/material.dart';
import 'package:remote/constants/colors.dart';
import 'package:remote/constants/common_textstyles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackArrow;
  final bool isSearchBar;
  final bool showLeadingArrow;
  final bool showTitleSpacing;
  final bool centerTitle;
  final double elevation;
  final Color? backgroundColor;
  final Color? backIconColor;
  final Widget? leading;
  final Widget? actionSearch;
  final List<Widget>? actionsWidget;
  final TextStyle? titleStyle;
  final VoidCallback? onPressed;

  @override
  Size get preferredSize => AppBar()
      .preferredSize; // Size.fromHeight(kToolbarHeight); // Size.fromHeight(34);

  const CustomAppBar(
      {Key? key,
      this.title = "",
      this.showBackArrow = false,
      this.isSearchBar = false,
      this.showLeadingArrow = true,
      this.showTitleSpacing = false,
      this.centerTitle = false,
      this.elevation = 0,
      this.leading,
      this.backgroundColor,
      this.actionSearch,
      this.actionsWidget,
      this.titleStyle,
      this.backIconColor,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: showBackArrow,
      backgroundColor: backIconColor,
      elevation: elevation,
      centerTitle: centerTitle,
      title:
          isSearchBar ? actionSearch : Text(title, style: titleStyle ?? t22n),
      titleSpacing: showTitleSpacing ? 20 : 5,
      leading: showLeadingArrow
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: onPressed ??
                  () {
                    Navigator.pop(context);
                  },
            )
          : leading,
      actions: actionsWidget,
    );
  }
}
