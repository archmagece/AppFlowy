import 'package:appflowy/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flowy_infra/image.dart';
import 'package:flutter/material.dart';

enum ViewMoreActionType {
  delete,
  addToFavorites, // not supported yet.
  duplicate,
  copyLink, // not supported yet.
  rename,
  moveTo, // not supported yet.
  openInNewTab,
}

extension ViewMoreActionTypeExtension on ViewMoreActionType {
  String get name {
    switch (this) {
      case ViewMoreActionType.delete:
        return LocaleKeys.disclosureAction_delete.tr();
      case ViewMoreActionType.addToFavorites:
        return LocaleKeys.disclosureAction_addToFavorites.tr();
      case ViewMoreActionType.duplicate:
        return LocaleKeys.disclosureAction_duplicate.tr();
      case ViewMoreActionType.copyLink:
        return LocaleKeys.disclosureAction_copyLink.tr();
      case ViewMoreActionType.rename:
        return LocaleKeys.disclosureAction_rename.tr();
      case ViewMoreActionType.moveTo:
        return LocaleKeys.disclosureAction_moveTo.tr();
      case ViewMoreActionType.openInNewTab:
        return LocaleKeys.disclosureAction_openNewTab.tr();
    }
  }

  Widget icon(Color iconColor) {
    switch (this) {
      case ViewMoreActionType.delete:
        return const FlowySvg(name: 'editor/delete');
      case ViewMoreActionType.addToFavorites:
        return const Icon(Icons.favorite);
      case ViewMoreActionType.duplicate:
        return const FlowySvg(name: 'editor/copy');
      case ViewMoreActionType.copyLink:
        return const Icon(Icons.copy);
      case ViewMoreActionType.rename:
        return const FlowySvg(name: 'editor/edit');
      case ViewMoreActionType.moveTo:
        return const Icon(Icons.move_to_inbox);
      case ViewMoreActionType.openInNewTab:
        return const FlowySvg(name: 'grid/expander');
    }
  }
}
