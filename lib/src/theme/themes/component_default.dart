import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shadcn_ui/src/theme/color_scheme/base.dart';
import 'package:shadcn_ui/src/theme/components/avatar.dart';
import 'package:shadcn_ui/src/theme/components/badge.dart';
import 'package:shadcn_ui/src/theme/components/button.dart';
import 'package:shadcn_ui/src/theme/components/decorator.dart';
import 'package:shadcn_ui/src/theme/components/option.dart';
import 'package:shadcn_ui/src/theme/components/popover.dart';
import 'package:shadcn_ui/src/theme/components/select.dart';
import 'package:shadcn_ui/src/theme/components/switch.dart';
import 'package:shadcn_ui/src/theme/components/tooltip.dart';
import 'package:shadcn_ui/src/theme/text_theme/data.dart';
import 'package:shadcn_ui/src/theme/text_theme/defaults.dart';
import 'package:shadcn_ui/src/theme/themes/shadows.dart';

abstract class ShadcnComponentDefaultTheme {
  static ShadcnButtonTheme primaryButtonTheme({
    required ShadcnColorScheme colorScheme,
  }) {
    return ShadcnButtonTheme(
      backgroundColor: colorScheme.primary,
      hoverBackgroundColor: colorScheme.primary.withOpacity(.9),
      foregroundColor: colorScheme.primaryForeground,
      hoverForegroundColor: colorScheme.primaryForeground,
    );
  }

  static ShadcnButtonTheme secondaryButtonTheme({
    required ShadcnColorScheme colorScheme,
  }) {
    return ShadcnButtonTheme(
      backgroundColor: colorScheme.secondary,
      hoverBackgroundColor: colorScheme.secondary.withOpacity(.8),
      foregroundColor: colorScheme.secondaryForeground,
      hoverForegroundColor: colorScheme.secondaryForeground,
    );
  }

  static ShadcnButtonTheme destructiveButtonTheme({
    required ShadcnColorScheme colorScheme,
  }) {
    return ShadcnButtonTheme(
      backgroundColor: colorScheme.destructive,
      hoverBackgroundColor: colorScheme.destructive.withOpacity(.9),
      foregroundColor: colorScheme.destructiveForeground,
      hoverForegroundColor: colorScheme.destructiveForeground,
    );
  }

  static ShadcnButtonTheme outlineButtonTheme({
    required ShadcnColorScheme colorScheme,
  }) {
    return ShadcnButtonTheme(
      hoverBackgroundColor: colorScheme.accent,
      foregroundColor: colorScheme.primary,
      hoverForegroundColor: colorScheme.accentForeground,
      border: Border.all(color: colorScheme.input),
    );
  }

  static ShadcnButtonTheme ghostButtonTheme({
    required ShadcnColorScheme colorScheme,
  }) {
    return ShadcnButtonTheme(
      hoverBackgroundColor: colorScheme.accent,
      foregroundColor: colorScheme.primary,
      hoverForegroundColor: colorScheme.accentForeground,
    );
  }

  static ShadcnButtonTheme linkButtonTheme({
    required ShadcnColorScheme colorScheme,
  }) {
    return ShadcnButtonTheme(
      foregroundColor: colorScheme.primary,
      hoverForegroundColor: colorScheme.primary,
      hoverTextDecoration: TextDecoration.underline,
    );
  }

  static ShadcnButtonSizesTheme buttonSizesTheme() {
    return const ShadcnButtonSizesTheme(
      regular: ShadcnButtonSizeTheme(
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      sm: ShadcnButtonSizeTheme(
        height: 36,
        padding: EdgeInsets.symmetric(horizontal: 12),
      ),
      lg: ShadcnButtonSizeTheme(
        height: 44,
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      ),
      icon: ShadcnButtonSizeTheme(
        height: 40,
        width: 40,
        padding: EdgeInsets.zero,
      ),
    );
  }

  static ShadcnBadgeTheme primaryBadgeTheme({
    required ShadcnColorScheme colorScheme,
  }) {
    return ShadcnBadgeTheme(
      backgroundColor: colorScheme.primary,
      hoverBackgroundColor: colorScheme.primary.withOpacity(.8),
      foregroundColor: colorScheme.primaryForeground,
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
    );
  }

  static ShadcnBadgeTheme secondaryBadgeTheme({
    required ShadcnColorScheme colorScheme,
  }) {
    return ShadcnBadgeTheme(
      backgroundColor: colorScheme.secondary,
      hoverBackgroundColor: colorScheme.secondary.withOpacity(.8),
      foregroundColor: colorScheme.secondaryForeground,
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
    );
  }

  static ShadcnBadgeTheme destructiveBadgeTheme({
    required ShadcnColorScheme colorScheme,
  }) {
    return ShadcnBadgeTheme(
      backgroundColor: colorScheme.destructive,
      hoverBackgroundColor: colorScheme.destructive.withOpacity(.8),
      foregroundColor: colorScheme.destructiveForeground,
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
    );
  }

  static ShadcnBadgeTheme outlineBadgeTheme({
    required ShadcnColorScheme colorScheme,
  }) {
    return ShadcnBadgeTheme(
      foregroundColor: colorScheme.foreground,
      shape: StadiumBorder(side: BorderSide(color: colorScheme.border)),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
    );
  }

  static ShadcnAvatarTheme avatarTheme({
    required ShadcnColorScheme colorScheme,
  }) {
    return ShadcnAvatarTheme(
      size: const Size.square(40),
      shape: const CircleBorder(),
      backgroundColor: colorScheme.muted,
    );
  }

  static ShadcnTooltipTheme tooltipTheme({
    required ShadcnColorScheme colorScheme,
    required BorderRadius radius,
  }) {
    return ShadcnTooltipTheme(
      effects: const [
        FadeEffect(),
        ScaleEffect(begin: Offset(.95, .95), end: Offset(1, 1)),
        MoveEffect(begin: Offset(0, 2), end: Offset.zero),
      ],
      shadows: ShadcnShadows.md,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: radius,
        border: Border.all(
          color: colorScheme.border,
        ),
        color: colorScheme.popover,
        boxShadow: ShadcnShadows.md,
      ),
      alignment: Alignment.topCenter,
      childAlignment: Alignment.bottomCenter,
    );
  }

  static ShadcnPopoverTheme popoverTheme({
    required ShadcnColorScheme colorScheme,
    required BorderRadius radius,
  }) {
    return ShadcnPopoverTheme(
      effects: const [
        FadeEffect(),
        ScaleEffect(begin: Offset(.95, .95), end: Offset(1, 1)),
        MoveEffect(begin: Offset(0, 2), end: Offset.zero),
      ],
      shadows: ShadcnShadows.md,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: radius,
        border: Border.all(
          color: colorScheme.border,
        ),
        color: colorScheme.popover,
        boxShadow: ShadcnShadows.md,
      ),
      alignment: Alignment.bottomCenter,
      childAlignment: Alignment.topCenter,
    );
  }

  static ShadcnDecorationTheme decoration({
    required ShadcnColorScheme colorScheme,
    required BorderRadius radius,
  }) {
    return ShadcnDecorationTheme(
      border: const ShadcnBorder(padding: EdgeInsets.all(4)),
      focusedBorder: ShadcnBorder(
        width: 2,
        color: colorScheme.ring,
        radius: radius.add(radius / 2),
        padding: const EdgeInsets.all(2),
      ),
    );
  }

  static ShadcnTextThemeData textTheme({
    required ShadcnColorScheme colorScheme,
  }) {
    return ShadcnTextThemeData(
      h1Large: ShadcnTextDefaultTheme.h1Large(colorScheme: colorScheme),
      h1: ShadcnTextDefaultTheme.h1(colorScheme: colorScheme),
      h2: ShadcnTextDefaultTheme.h2(colorScheme: colorScheme),
      h3: ShadcnTextDefaultTheme.h3(colorScheme: colorScheme),
      h4: ShadcnTextDefaultTheme.h4(colorScheme: colorScheme),
      p: ShadcnTextDefaultTheme.p(colorScheme: colorScheme),
      blockquote: ShadcnTextDefaultTheme.blockquote(colorScheme: colorScheme),
      table: ShadcnTextDefaultTheme.table(colorScheme: colorScheme),
      list: ShadcnTextDefaultTheme.list(colorScheme: colorScheme),
      lead: ShadcnTextDefaultTheme.lead(colorScheme: colorScheme),
      large: ShadcnTextDefaultTheme.large(colorScheme: colorScheme),
      small: ShadcnTextDefaultTheme.small(colorScheme: colorScheme),
      muted: ShadcnTextDefaultTheme.muted(colorScheme: colorScheme),
    );
  }

  static ShadcnSelectTheme selectTheme({
    required ShadcnColorScheme colorScheme,
  }) {
    return ShadcnSelectTheme(
      minWidth: kDefaultSelectMinWidth,
      maxHeight: kDefaultSelectMaxHeight,
      offset: const Offset(4, 0),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      backgroundColor: colorScheme.background,
      border: Border.all(color: colorScheme.input),
      optionsPadding: const EdgeInsets.all(4),
      showScrollToTopChevron: true,
      showScrollToBottomChevron: true,
    );
  }

  static ShadcnOptionTheme optionTheme({
    required ShadcnColorScheme colorScheme,
  }) {
    return ShadcnOptionTheme(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      hoveredBackgroundColor: colorScheme.accent,
    );
  }

  static ShadcnSwitchTheme switchTheme({
    required ShadcnColorScheme colorScheme,
  }) {
    return ShadcnSwitchTheme(
      radius: const BorderRadius.all(Radius.circular(24)),
      width: 44,
      margin: 2,
      duration: 100.milliseconds,
      thumbColor: colorScheme.background,
      uncheckedTrackColor: colorScheme.input,
      checkedTrackColor: colorScheme.primary,
      decoration: ShadcnDecorationTheme(
        border: const ShadcnBorder(width: 4, color: Colors.transparent),
        focusedBorder: ShadcnBorder(
          width: 2,
          color: colorScheme.ring,
          // the outer radius is calculated as
          // outerRadius = innerRadius + innerRadius / 2
          // outerRadius = 24 + 24 / 2 = 36
          radius: const BorderRadius.all(Radius.circular(36)),
          padding: const EdgeInsets.all(2),
        ),
      ),
    );
  }
}
