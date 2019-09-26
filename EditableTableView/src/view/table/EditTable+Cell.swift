import UIKit
/**
 * Cell
 */
extension EditTable {
   /**
    * Returns row count in a section
    */
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return rowData.count
   }
   /**
    * Creates / Recycles cells
    */
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell: EditablePlaylistCell = {
         let cell: EditablePlaylistCell = tableView.dequeueReusableCell(indexPath: indexPath)
         cell.backgroundColor = .clear // debug
         cell.data = rowData[indexPath.row]
         return cell
      }()
      return cell
   }
   /**
    * Returns the height of each cell
    */
   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      return 48
   }
   func registerCells() {
      self.register(EditablePlaylistCell.self)
   }
}
