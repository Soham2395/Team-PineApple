import SwiftUI

struct LeaderboardUser: Identifiable {
    let id = UUID()
    let rank: Int
    let username: String
    let score: Int
    let image: String
}

struct PodiumUser: Identifiable {
    let id = UUID()
    let username: String
    let score: Int
    let image: String
    let position: Int
}

struct LeaderBoardUIView: View {
    let images = ["leaderboard1", "leaderboard2", "leaderboard3"]
    
    let podiumUsers = [
        PodiumUser(username: "ruby_gamer", score: 7523, image: "leaderboard3", position: 1),
        PodiumUser(username: "ronni_irani123", score: 7363, image: "leaderboard2", position: 2),
        PodiumUser(username: "jettspanner123", score: 5523, image: "leaderboard1", position: 3)
    ]
    
    let monthlyUsers = [
        LeaderboardUser(rank: 4, username: "leo_niggo", score: 2003, image: "user4"),
        LeaderboardUser(rank: 5, username: "honey_bunny", score: 1998, image: "user5"),
        LeaderboardUser(rank: 6, username: "hello_world123", score: 1500, image: "user6"),
        LeaderboardUser(rank: 7, username: "sassy_om", score: 1450, image: "user7"),
        LeaderboardUser(rank: 8, username: "vanshu_t", score: 1375, image: "user8"),
    ]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                HStack {
                    Button(action: {}) {
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Text("Leaderboard")
                        .font(.custom("SF Compact Rounded", size: 40))
                        .foregroundColor(.white)
                        .offset(x: -70)
                }
                .padding(.horizontal)
                .padding(.top, 20)
                .padding(.bottom, 10)
                .background(Color("PageHeadingColor").opacity(0.51).blur(radius: 1))
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Highest this month")
                            .font(.custom("Roboto-Condensed", size: 18))
                            .foregroundColor(.white)
                            .padding(.horizontal)
                            .padding(.top)
                        HStack(alignment: .bottom, spacing: 15) {
                            VStack {
                                Image(podiumUsers[2].image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 80)
                                    .clipShape(Circle())
                                
                                Text(podiumUsers[2].username)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                                
                                Text("\(podiumUsers[2].score)🔥")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                                    .padding(.bottom,8)
                                
                                Rectangle()
                                    .fill(LinearGradient(
                                        gradient: Gradient(colors: [
                                                        Color(red: 213/255, green: 88/255, blue: 21/255),
                                                        Color(red: 133/255, green: 86/255, blue: 63/255)]),
                                                startPoint: .top,
                                                endPoint: .bottom
                                            ))
                                    .frame(width: 90, height: 100)
                                    .cornerRadius(20)
                            }
                            
                            VStack {
                                Image(podiumUsers[1].image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 80)
                                    .clipShape(Circle())
                                
                                Text(podiumUsers[1].username)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                                
                                Text("\(podiumUsers[1].score)🔥")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                                    .padding(.bottom,8)
                                
                                Rectangle()
                                    .fill(LinearGradient(
                                        gradient: Gradient(colors: [
                                                        Color(red: 255/255, green: 255/255, blue: 255/255),
                                                        Color(red: 153/255, green: 153/255, blue: 153/255)]),
                                                startPoint: .top,
                                                endPoint: .bottom
                                            ))
                                    .frame(width: 90, height: 140)
                                    .cornerRadius(20)
                                    .padding(.horizontal,10)
                            }
                            
                            VStack {
                                Image(podiumUsers[0].image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 80)
                                    .clipShape(Circle())
                                
                                Text(podiumUsers[0].username)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                                
                                Text("\(podiumUsers[0].score)🔥")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                                    .padding(.bottom,8)
                                
                                Rectangle()
                                    .fill(LinearGradient(
                                        gradient: Gradient(colors: [
                                                        Color(red: 213/255, green: 162/255, blue: 21/255),
                                                        Color(red: 155/255, green: 133/255, blue: 72/255)]),
                                                startPoint: .top,
                                                endPoint: .bottom
                                            ))
                                    .frame(width: 90, height: 180)
                                    .cornerRadius(20)
                            }
                            .padding(.horizontal,10)
                        }
                        .offset(x:30)
                        
                        Text("Personal best this month")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                            .padding(.top)
                        
                        HStack {
                            Text("325")
                                .font(.title)
                                .foregroundColor(.black)
                                .frame(width: 80, height: 80)
                                .background(Color.white)
                                                            
                            VStack(alignment: .leading) {
                                Text("You")
                                    .font(.title3)
                                    .foregroundColor(.white)
                                Text("12🔥")
                                    .foregroundColor(.white)
                                    .font(.subheadline)
                            }
                            .padding(.leading)
                            Spacer()
                                
                        }
                        .background(Color("SearchBoxColor"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white.opacity(0.18), lineWidth: 1)
                        )
                        .padding(.horizontal)
                        
                        
                        
                        Text("Monthly Leaderboard")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                            .padding(.top)
                        
                        VStack(spacing: 0) {
                            ForEach(monthlyUsers) { user in
                                HStack {
                                    Text("\(user.rank)")
                                        .font(.title2)
                                        .foregroundColor(.black)
                                        .frame(width: 80, height: 80)
                                        .background(Color.white)
                                        
                                    
                                    VStack(alignment: .leading) {
                                        Text(user.username)
                                            .font(.title3)
                                            .foregroundColor(.white)
                                        Text("\(user.score)🔥")
                                            .foregroundColor(.white)
                                            .font(.subheadline)
                                    }
                                    .padding(.leading)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "person.2.fill")
                                        .foregroundColor(.white)
                                        .padding(.trailing,30)
                                }
                                .background(Color("SearchBoxColor"))
                                
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white.opacity(0.18), lineWidth: 1)
                                )
                            }
                        }
                        .padding(.horizontal)
                    }
                }
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
    LeaderBoardUIView()
}
