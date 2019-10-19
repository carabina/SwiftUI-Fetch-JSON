import SwiftUI

struct ContentView: View {
    @ObservedObject var musicData = NetworkManager()
    var trackNumber = 0
    
    var body: some View {
        NavigationView {
            VStack {
                HButtonsView()
                
                List(self.musicData.musicResults.results, id: \.self) { track in
                    HStack {
                        Image(track.artworkUrl30)
                        Text(track.trackName)
                        
                        Spacer()
                        
                        Image(systemName: "plus")
                            .foregroundColor(.pink)
                    }
                }.navigationBarTitle("Music")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
