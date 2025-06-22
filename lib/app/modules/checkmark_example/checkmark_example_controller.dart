import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/global_widgets/checkmark_list_tile.dart';

class CheckmarkExampleController extends GetxController {
  var _singleSelectOptions = [
    CheckmarkListTileOption(title: 'Option 1', checked: true),
    CheckmarkListTileOption(title: 'Option 2', checked: false),
    CheckmarkListTileOption(title: 'Option 3', checked: false),
  ];

  get singleSelectOptions => _singleSelectOptions;

  var _multiSelectOptions = [
    CheckmarkListTileOption(title: 'Option 1', checked: true),
    CheckmarkListTileOption(title: 'Option 2', checked: true),
    CheckmarkListTileOption(title: 'Option 3', checked: false),
    CheckmarkListTileOption(title: 'Option 4', checked: false),
  ];

  get multiSelectOptions => _multiSelectOptions;

  void selectFromSingle(index) {
    if (_singleSelectOptions[index].checked) {
      return;
    }
    for (int i = 0; i < _singleSelectOptions.length; i++) {
      _singleSelectOptions[i].checked = false;
    }
    _singleSelectOptions[index].checked = true;
    update();
  }

  void selectFromMulti(index) {
    int checkedCount = 0;
    for (int i = 0; i < _multiSelectOptions.length; i++) {
      if (_multiSelectOptions[i].checked) {
        checkedCount++;
      }
    }
    if (_multiSelectOptions[index].checked) {
      if (checkedCount > 1) {
        _multiSelectOptions[index].checked = false;
      }
      update();
      return;
    }
    _multiSelectOptions[index].checked = true;
    update();
  }
}
