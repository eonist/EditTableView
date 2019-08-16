import UIkit
import Spatial
import With
/**
 * Create
 */
extension EditView {
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
