import SwiftUI

struct HButtonsView: View {
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Button(action: {
                    print("play")
                }) {
                    HStack {
                        Image(systemName: "play.fill")
                        Text("Play")
                    }.padding()
                }
                .frame(width: geometry.size.width / 2.4, height: 50)
                .foregroundColor(.pink)
                .background(Color.secondary)
                .cornerRadius(12)
                .padding()
                
                Button(action: {
                    print("play")
                }) {
                    HStack {
                        Image(systemName: "shuffle")
                        Text("shuffle")
                    }.padding()
                }
                .frame(width: geometry.size.width / 2.4, height: 50)
                .foregroundColor(.pink)
                .background(Color.gray)
                .cornerRadius(12)
                .padding()
            }
        }.frame(height: 50)
    }
}

struct HButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        HButtonsView()
    }
}
