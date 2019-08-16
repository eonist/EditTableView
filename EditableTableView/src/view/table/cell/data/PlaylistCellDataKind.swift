import Foundation

protocol PlaylistCellDataKind: CellDataKind {
   var artistName: String { get }
   var songTitle: String { get }
}
