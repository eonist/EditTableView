# Pseudo-code for "edit playlist feature"

```swift
class EditPlaylistView {
  lazy var header: Header = createHeader()
  lazy var table: Table = createTable()
  init(){
    _ = header
    _ = table
  }
}
 /**
  * Create
  */
extension EditPlaylistView {
   /**
    * header
    */
  func createHeader() {
    return with(.init()) -> Header {
      addSubview($0)
      $0.anchorAndSize(to: self, height: 120, align: .topLeft, alignTo: .topLeft)
    }
  }
   /**
    * table
    */
  func createTable() -> Table {
    with(.init()) {
      addSubview($0)
      $0.anchorAndSize(to: header, sizeTo: self, align: .topLeft, alignTo: .topLeft, sizeOffset: .init(width: 0, height: -120))
    }
  }
}
extension EditPlaylistView {
   /**
    * When the user clicks the done button
    */
  func onDone() {
      guard let selectedRows = table.indexPathsForSelectedRows else { return }
      self.beginUpdates()
      let rowDataIndecies: [Int] = selectedRows.map { $0.row } // maybe use set?
      ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"].reversed().forEach { rowDataIndecies.remove(at: $0) }
      self.deleteRows(at: selectedRows, with: .automatic)
      self.endUpdates()
  }
   /*
    * When the user clicks the cancel button
    */
  func onCancel() {
      //transition back to previouse view
  }
}
```

## Table

```swift
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
```

## Header

```swift
class Header: UIView {
  lazy var leftButton: UIButton = createLeftButton()
  lazy var centerTitle: UILabel = createCenterTitle()
  lazy var rightButton: UIButton = createRightButton()

  init() {
    backgroundColor = .gray
    _ = leftButton
    _ = centerTitle
    _ = rightButton
  }
}
extension Header {
  func createLeftButton() {
    with(.init()) {
      $0.text = "Cancel"
      $0.backgroundColor = .green
      $0.textColor = .white
      addSubview($0)
      $0.alignment = .left
      $0.anchorAndSize(to:self, width: 120, align: .topLeft, alignTo: .topLeft, offset: .init(x:20,y:0))
      btn.addTarget(self, action: #selector(buttonTouched), for: .touchUpInside)
      self.view.addSubview(btn)
    }
  }
  func createCenterTitle() {
    with(.init()) {
      $0.text = "Edit Awesome playlist"
      $0.backgroundColor = .purple
      $0.textColor = .liteGray
      $0.alignment = .center
      addSubview($0)
      $0.anchorAndSize(to:self, width: 120, align: .topCenter, alignTo: .topCenter, offset: .init(x:0,y:0))
    }
  }
  func createRightButton() {
    with(.init()) {
      $0.text = "Done"
      $0.backgroundColor = .yellow
      $0.textColor = .white
      addSubview($0)
      $0.alignment = .right
      $0.anchorAndSize(to:self, width: 120, align: .topRight, alignTo: .topRight, offset: .init(x:-20,y:0))
    }
  }
}
/**
 * Event
 */
extension Header {
  @objc func onLeftButtonTap(sender: UIButton) {
      Swift.print("onLeftButtonTap")
    (self.superview as? EditPlaylistView)?.onCancel()
  }
  @objc func onRightButtonTap(sender: UIButton) {
      Swift.print("onRightButtonTap")
      (self.superview as? EditPlaylistView)?.onDone()
  }
}
```

// 🏀
// make repo ✅
// hock up events to parent ✅
// start writing the table logic
// make the header in project ✅
// add simple table bellow header (just row idx as data)
// try to add the edit and drag logic
