import UIKit

class EditView {
  lazy var header: Header = createHeader()
  lazy var table: Table = createTable()
  init(){
    _ = header
    _ = table
  }
}
