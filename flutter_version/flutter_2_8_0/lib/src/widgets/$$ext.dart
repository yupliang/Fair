import 'dart:ui';

import 'package:flutter/material.dart';

var p = () => {
      'InkWell': (props) => InkWell(
            key: props['key'],
            child: props['child'],
            onTap: props['onTap'],
            onDoubleTap: props['onDoubleTap'],
            onLongPress: props['onLongPress'],
            onTapDown: props['onTapDown'],
            onTapCancel: props['onTapCancel'],
            onHighlightChanged: props['onHighlightChanged'],
            onHover: props['onHover'],
            mouseCursor: props['mouseCursor'],
            focusColor: props['focusColor'],
            hoverColor: props['hoverColor'],
            highlightColor: props['highlightColor'],
            overlayColor: props['overlayColor'],
            splashColor: props['splashColor'],
            splashFactory: props['splashFactory'],
            radius: props['radius'],
            borderRadius: props['borderRadius'],
            customBorder: props['customBorder'],
            enableFeedback: props['enableFeedback'] ?? true,
            excludeFromSemantics: props['excludeFromSemantics'] ?? false,
            focusNode: props['focusNode'],
            canRequestFocus: props['canRequestFocus'] ?? true,
            onFocusChange: props['onFocusChange'],
            autofocus: props['autofocus'] ?? false,
          ),
      'OutlinedButton':(props) => OutlinedButton(
            key: props['key'],
            onPressed: props['onPressed']!,
            child: props['child']!,
            onLongPress: props['onLongPress'],
            onHover: props['onHover'],
            onFocusChange: props['onFocusChange'],
            style: props['style'],
            focusNode: props['focusNode'],
            autofocus: props['autofocus'] ?? false,
            clipBehavior: props['clipBehavior'] ?? Clip.none,
      ),
      'Duration': (props) => Duration(
            days: props['days'] ?? 0,
            hours: props['hours'] ?? 0,
            minutes: props['minutes'] ?? 0,
            seconds: props['seconds'] ?? 0,
            milliseconds: props['milliseconds'] ?? 0,
            microseconds: props['microseconds'] ?? 0,
          ),
      'ElevatedButton': (props) => ElevatedButton(
            key: props['key'],
            child: props['child'],
            onPressed: props['onPressed'],
            onLongPress: props['onLongPress'],
            onHover: props['onHover'],
            onFocusChange: props['onFocusChange'],
            style: props['style'],
            focusNode: props['focusNode'],
            autofocus: props['autofocus']?? false,
            clipBehavior: props['clipBehavior']?? Clip.none,
      ),
      'BorderRadius.circular': (props) => BorderRadius.circular(
            props['pa'][0]?.toDouble(),
      ),
      'TextSpan': (props) => TextSpan(
          text: props['text'],
            children: props['children'],
            style: props['style'],
            recognizer: props['recognizer'],
            mouseCursor: props['mouseCursor'],
            onEnter: props['onEnter'],
            onExit: props['onExit'],
            semanticsLabel: props['semanticsLabel'],
            locale: props['locale'],
            spellOut: props['spellOut'],
      ),
      'TextStyle': (props) => TextStyle(
            inherit: props['inherit'] ?? true,
            color: props['color'],
            backgroundColor: props['backgroundColor'],
            fontSize: props['fontSize'],
            fontWeight: props['fontWeight'],
            letterSpacing: props['letterSpacing'],
            wordSpacing: props['wordSpacing'],
            textBaseline: props['textBaseline'],
            height: props['height'],
            leadingDistribution: props['leadingDistribution'],
            locale: props['locale'],
            foreground: props['foreground'],
            background: props['background'],
            shadows: props['shadows'],
            fontFeatures: props['fontFeatures'],
            decoration: props['decoration'],
            decorationColor: props['decorationColor'],
            decorationStyle: props['decorationStyle'],
            decorationThickness: props['decorationThickness'],
            debugLabel: props['debugLabel'],
            fontFamily: props['fontFamily'],
            fontFamilyFallback: props['fontFamilyFallback'],
            package: props['package'],
            overflow: props['overflow'],
          ),
      'ImageFilter.blur':(props)=>ImageFilter.blur(
            sigmaX: props['sigmaX']?.toDouble() ?? 0.0,
            sigmaY: props['sigmaY']?.toDouble() ?? 0.0,
            tileMode: props['tileMode']?? TileMode.clamp,
      ),
      'BottomNavigationBarItem':(props)=>BottomNavigationBarItem(
            icon: props['icon'],
            label: props['label'],
            activeIcon: props['activeIcon'] ?? props['icon'],
            backgroundColor: props['backgroundColor'],
            tooltip: props['tooltip'],
      ),
      // 往下补充Widget映射关系
    };
