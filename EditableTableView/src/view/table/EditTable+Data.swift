import Foundation

extension EditTable {
   /**
    * playlistData
    */
   static let playlistData: [PlaylistCellData] = {
      let a: PlaylistCellData = .init(artistName: "Madonna", songTitle: "Prayer")
      let b: PlaylistCellData = .init(artistName: "Elvis", songTitle: "Bring the house down")
      let c: PlaylistCellData = .init(artistName: "Taylor Swift", songTitle: "Empty promisses")
      let d: PlaylistCellData = .init(artistName: "Mylo", songTitle: "Heart soul")
      let e: PlaylistCellData = .init(artistName: "Halsey", songTitle: "American dream")
      let f: PlaylistCellData = .init(artistName: "Elton John", songTitle: "Piano duette")
      let g: PlaylistCellData = .init(artistName: "Eminem", songTitle: "One song")
      let h: PlaylistCellData = .init(artistName: "Michael Jackson", songTitle: "Moonwalker")
      return [a, b, c, d, e, f, g, h]
   }()
}
