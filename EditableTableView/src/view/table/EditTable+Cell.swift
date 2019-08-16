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
    * Creates/Recycles cells
    */
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "\(TextCell.self)", for: indexPath)
      cell.textLabel?.text = rowData[indexPath.row]
      return cell
   }
   /**
    * Returns the height of each cell
    */
   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      return 32
   }
   func registerCells() {
      self.register(TextCell.self, forCellReuseIdentifier: "\(TextCell.self)")
   }
   /**
    * When an item is tapped
    */
//   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//      Swift.print("Tapped idx: \(indexPath.row)")
//   }
}


