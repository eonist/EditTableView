import UIKit
import Spatial
import With
/**
 * Create
 */
extension EditView {
   /**
    * header
    */
   func createHeader() -> Header {
      return with(.init()) {
         addSubview($0)
         $0.anchorAndSize(to: self, height: Header.height, align: .topLeft, alignTo: .topLeft)
      }
   }
   /**
    * table
    */
   func createTable() -> EditTable {
      let rowData: [String] = (0..<32).indices.map { "Item: \($0)" }
      return with(.init(rowData: rowData, frame: .zero, style: .plain)) {
         addSubview($0)
         $0.backgroundView?.backgroundColor = .black
         $0.anchorAndSize(to: header, sizeTo: self, align: .topLeft, alignTo: .bottomLeft, sizeOffset: .init(width: 0, height: -Header.height))
      }
   }
}
