import UIKit

extension EditTable {
   /**
    * Enables drag and drop of cells in the table
    */
   func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
      let movedObject = self.rowData[sourceIndexPath.row]
      self.rowData.remove(at: sourceIndexPath.row)
      self.rowData.insert(movedObject, at: destinationIndexPath.row)
   }
}
