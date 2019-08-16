import UIKit

extension EditView {
   /**
    * When the user clicks the done button
    * - Fixme: ⚠️️ possibly move this logic to the table scope
    */
   func onDone() {
      Swift.print("onDone()")
      guard let selectedRows = table.indexPathsForSelectedRows else { return }
      let rowDataIndecies: [Int] = selectedRows.map { $0.row } // Fixme: ⚠️️ maybe use set?
      rowDataIndecies.reversed().forEach { table.rowData.remove(at: $0) }
      table.beginUpdates()
      table.deleteRows(at: selectedRows, with: .automatic)
      table.endUpdates()
   }
   /**
    * When the user clicks the cancel button
    */
   func onCancel() {
      Swift.print("onCancel()")
      //transition back to previouse view
   }
}
