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
      let cell: UITableViewCell = {
         //         let cell =  // Instantiate your cells
         let cell: PlaylistCell = tableView.dequeueReusableCell(indexPath: indexPath)
         //         guard let cell: PlaylistCell = tableView.dequeueReusableCell(withIdentifier: "\(PlaylistCell.self)", for: indexPath as IndexPath) as? PlaylistCell else { fatalError("err") }
         cell.backgroundColor = .clear // debug
         cell.data = rowData[indexPath.row]
         cell.index = indexPath.row
         return cell as PlaylistCell
      }()
      return cell
   }
//   /**
//    * Creates/Recycles cells
//    */
//   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//      let cell = tableView.dequeueReusableCell(withIdentifier: "\(TextCell.self)", for: indexPath)
//      cell.textLabel?.text = rowData[indexPath.row]
//      return cell
//   }
   /**
    * Returns the height of each cell
    */
   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      return 48
   }
   func registerCells() {
//      self.register(TextCell.self, forCellReuseIdentifier: "\(TextCell.self)")
      self.register(PlaylistCell.self)
   }
//   override func moveRow(at indexPath: IndexPath, to newIndexPath: IndexPath) {
//
//   }
//   func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//      if editingStyle == .delete {
//         arrayOfnames.removeAtIndex(indexPath.row)
//         self.reloadData()
//      }
//   }

   /**
    * When an item is tapped
    */
//   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//      Swift.print("Tapped idx: \(indexPath.row)")
////      let cell = tableView.dequeueReusableCell(withIdentifier: "\(TextCell.self)", for: indexPath)
//      guard let cell:UITableViewCell = self.cellForRow(at: indexPath) as? UITableViewCell else { return }
////      cell.select(nil)
//
////      cell.isSelected = !cell.isSelected
////      cell.selectionStyle = cell.isSelected ? .none : .default
//   }
}

