import UIKit

extension EditTable {
   //   override func moveRow(at indexPath: IndexPath, to newIndexPath: IndexPath) {
   //      let movedObject = self.rowData[indexPath.row]
   //      self.rowData.remove(at: indexPath.row)
   //      self.rowData.insert(movedObject, at: newIndexPath.row)
   //   }
   func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
      let movedObject = self.rowData[sourceIndexPath.row]
      self.rowData.remove(at: sourceIndexPath.row)
      self.rowData.insert(movedObject, at: destinationIndexPath.row)
   }
   //   func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
   //      return true
   //   }
   //   func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
   //      return .delete
   //   }
}
