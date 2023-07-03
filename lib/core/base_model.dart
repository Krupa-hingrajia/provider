import 'package:flutter/cupertino.dart';
import 'package:provider_demo/core/view_state.dart';

class BaseModel with ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  set state(ViewState value) {
    _state = value;
    notifyListeners();
  }

  updateUI() {
    notifyListeners();
  }
}
