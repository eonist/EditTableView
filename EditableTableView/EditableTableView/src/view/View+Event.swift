import UIKit

extension EditView {
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
