struct MusicResults: Decodable {
    let resultCount: Int
    var results: [Result]
    
    struct Result: Decodable, Hashable {
        let wrapperType: String
        let kind: String
        let artistId: Int
        let collectionId: Int
        let trackId: Int
        let artistName: String
        let collectionName: String
        let trackName: String
        let collectionCensoredName: String
        let trackCensoredName: String
        let artistViewUrl: String
        let collectionViewUrl: String
        let trackViewUrl: String
        let previewUrl: String
        let trackCount: Int
        let trackTimeMillis: Int
        let artworkUrl30: String
        let artworkUrl60: String
        let artworkUrl100: String
    }
}
