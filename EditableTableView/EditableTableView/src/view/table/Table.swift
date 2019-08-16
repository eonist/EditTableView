import Table

class Table {
  init() {
    self.allowsMultipleSelectionDuringEditing = true // adds multiple selection support
    self.setEditing(true, animated: false) // starts edit mode for table
  }
}
class PlayListCell {
  //leftIcon = checkMark
  //Artist-name (top-half)
  //Song-title (bottom-half)
  //rightIcon = dragIcon
}
