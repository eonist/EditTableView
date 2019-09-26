import UIKit

extension EditView {
   /**
    * When the user clicks the done button
    * - Fixme: ⚠️️ possibly move this logic to the table scope
    */
   func onDone() {
      Swift.print("onDone()")
      guard let selectedRows = table.indexPathsForSelectedRows else { return } // get selected rows
      let rowDataIndecies: [Int] = selectedRows.map { $0.row } // this will always have unique integers, no need to use set
      rowDataIndecies.sorted().reversed().forEach { Swift.print("$0:  \($0)"); table.rowData.remove(at: $0) } // alter the rowData
      table.beginUpdates() // sort of like reloadTable, but for only the affected cells
      table.deleteRows(at: selectedRows, with: .automatic) // delete the cell items in the table
      table.endUpdates()
   }
   /**
    * When the user clicks the cancel button
    */
   func onCancel() {
      Swift.print("onCancel()")
      //transition back to previouse view
      Swift.print("table.rowData.count:  \(table.rowData.count)")
      //pass the rowData into the master controller
   }
}
