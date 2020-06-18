import SwiftUI

struct SlidingNav: View {
    let menuItems = ["HOME","VIDEOS","PLAYLISTS", "COMMUNITY","CHANNELS","ABOUT"]
    var body: some View {
        VStack{
            ScrollView (.horizontal){
                HStack{
                    ForEach(menuItems, id: \.self) { item in
                        HStack{
                            Button(action:{}){
                                VStack{
                                    Text(item).fontWeight(.semibold)
                                        .font(.system(size: 15))
                                        .fixedSize(horizontal: true, vertical: false)
                                }
                            }.padding(9)
                            
                        }
                    }
                }
            }
            Spacer()
        }
    }
}

struct slidingNav_Previews: PreviewProvider {
    static var previews: some View {
        SlidingNav()
    }
}
