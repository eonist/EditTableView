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
   func createHeader() -> EditViewHeader {
      return with(.init()) {
         addSubview($0)
         $0.anchorAndSize(to: self, height: EditViewHeader.height, align: .topLeft, alignTo: .topLeft)
      }
   }
   /**
    * table
    */
   func createTable() -> EditTable {
      let rowData = EditTable.playlistData
      return with(.init(rowData: rowData, frame: .zero, style: .plain)) {
         addSubview($0)
         $0.backgroundView?.backgroundColor = .black
         $0.anchorAndSize(to: header, sizeTo: self, align: .topLeft, alignTo: .bottomLeft, sizeOffset: .init(width: 0, height: -EditViewHeader.height))
      }
   }
}
