import Foundation

class NetworkManager: ObservableObject {
    @Published var musicResults = MusicResults(resultCount: 0, results: [MusicResults.Result]())
    
    let url = "https://itunes.apple.com/search?term=feist+let+it+die"
    
    init() {
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                guard let data = data else { return }
                let result = try JSONDecoder().decode(MusicResults.self, from: data)
                DispatchQueue.main.async {
                    self.musicResults.results = result.results
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }.resume()
    }
}
