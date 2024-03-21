
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon=true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
            color: const Color(0xff0d98b9).withOpacity(0.1),
          ),
          child:  Padding(
            padding:const EdgeInsets.symmetric(horizontal: 05),
            child: Icon(icon,color:const Color(0xff0d98b9) ),
          ),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 00),
        child: Text(title,style: Theme.of(context).textTheme.bodyLarge?.apply(color: textColor)),
      ),
      trailing:endIcon? Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color(0xff0d98b9).withOpacity(0.1),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 05),
          child: Icon(Icons.arrow_forward_ios,color:Colors.black ),
        ),
      ):null,
    );
  }
}