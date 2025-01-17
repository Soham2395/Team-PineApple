import SwiftUI

struct FriendsUIView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        Button(action: {
                        }) {
                            Image(systemName: "chevron.left")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Text("Friends")
                            .font(.custom("SF Compact Rounded", size: 36))
                            .foregroundColor(.white)
                            .offset(x:-12)
                        Spacer()
                    }
                    .padding(.horizontal)
                    .offset(y: -10)
                    .padding(.top, 20)
                    
                    ZStack(alignment: .leading) {
                        if searchText.isEmpty {
                            Text("Search")
                                .foregroundColor(.gray)
                                .padding(.leading, 5)
                                .font(.title3)
                        }
                        
                        TextField("", text: $searchText)
                            .textFieldStyle(PlainTextFieldStyle())
                            .foregroundColor(.white)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .font(.title3)
                    }
                    .padding(12)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("SearchBoxColor"))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white.opacity(0.18), lineWidth: 1)
                    )
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                }
                .background(Color("PageHeadingColor").opacity(0.51)
                    .blur(radius: 1))
                .cornerRadius(20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color("AppBGColor"), Color.black]),
                    startPoint: .top,
                    endPoint: .bottom
                ).ignoresSafeArea()
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    FriendsUIView()
}
