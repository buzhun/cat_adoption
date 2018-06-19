class AppState {
  List<String> collections = [];

  void set add_collection(String name) {
    this.collections.add(name);
  }
}


class CollectAction {
  final int catId;
  final String catName;
  final String type;
  CollectAction(this.type, this.catId, this.catName);
}

AppState AppReducer(AppState state, dynamic action) {
  
  if (action.type == 'add') {
    state.add_collection = action.catName;
  }
  return state;
}