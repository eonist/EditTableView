import Foundation

extension EditTable {
   /**
    * playlistData (Dummy data)
    */
   static let playlistData: [EditablePlaylistCellData] = {
      let a: EditablePlaylistCellData = .init(artistName: "Madonna", songTitle: "Prayer")
      let b: EditablePlaylistCellData = .init(artistName: "Elvis", songTitle: "Bring the house down")
      let c: EditablePlaylistCellData = .init(artistName: "Taylor Swift", songTitle: "Empty promisses")
      let d: EditablePlaylistCellData = .init(artistName: "Mylo", songTitle: "Heart soul")
      let e: EditablePlaylistCellData = .init(artistName: "Halsey", songTitle: "American dream")
      let f: EditablePlaylistCellData = .init(artistName: "Elton John", songTitle: "Piano duette")
      let g: EditablePlaylistCellData = .init(artistName: "Eminem", songTitle: "One song")
      let h: EditablePlaylistCellData = .init(artistName: "Michael Jackson", songTitle: "Moonwalker")
      return [a, b, c, d, e, f, g, h]
   }()
}
