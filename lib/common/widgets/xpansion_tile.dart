import 'package:flutter/material.dart';
import 'package:task_management/common/utils/constants.dart';
import 'package:task_management/common/widgets/titles.dart';

class XpansionTile extends StatelessWidget {
  const XpansionTile({Key? key, required this.text, required this.text2,
    this.onExpansionChanged, this.trailing, required this.children}) : super(key: key);

 final String text, text2;
 final void Function(bool)? onExpansionChanged;
 final Widget? trailing;
 final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppConst.kBkLight,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Theme(data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
            title: BottomTitles(text: text , text2: text2,),
        tilePadding: EdgeInsets.zero,
          childrenPadding: EdgeInsets.zero,
          onExpansionChanged: onExpansionChanged,
          controlAffinity: ListTileControlAffinity.trailing,
          trailing: trailing,
          children: children,
        ),
      ),
    );
  }
}