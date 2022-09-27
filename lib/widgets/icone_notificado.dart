import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

//arquivo que gera um icone com um badge
Stack iconeNotificado(IconData _icone, int _valor) {
  return Stack(children: <Widget>[
    Icon(_icone),
    Badge(
      badgeColor: Colors.black,
      animationType: BadgeAnimationType.fade,
      showBadge: _valor>0?true:false,
      badgeContent:
          Text(_valor.toString(), style: (TextStyle(color: Colors.white))),
      // position: BadgePosition.bottomStart(),
    ),
  ]);
}
