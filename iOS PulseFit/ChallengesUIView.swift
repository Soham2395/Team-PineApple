import SwiftUI

struct Challenge: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let difficulty: String
    let duration: String
    let backgroundColor: LinearGradient
    let gifName: String
}

struct ChallengeCard: View {
    let challenge: Challenge
    private var buttonBackgroundColor: Color {
        switch challenge.title {
        case "Pushup Contest":
            return Color(red: 112/255, green: 23/255, blue: 0/255).opacity(0.4)
        case "Squats Challenge":
            return Color(red: 103/255, green: 152/255, blue: 227/255).opacity(0.4)
        case "Marathon Challenge":
            return Color(red:103/255, green: 157/255, blue: 227/255).opacity(0.4)
        default:
            return Color.gray
        }
    }
    
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 8) {
                Text(challenge.title)
                    .font(.custom("Roboto-Condensed", size: 20))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.top,10)
                
                Text(challenge.description)
                    .font(.custom("Roboto-Condensed", size: 16))
                    .foregroundColor(.white.opacity(0.8))
                
                Spacer()
                
                HStack(spacing: 12) {
                    Text(challenge.difficulty)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(buttonBackgroundColor)
                        .cornerRadius(15)
                    
                    Text(challenge.duration)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(buttonBackgroundColor)
                        .cornerRadius(15)
                }
            }
            .padding(.vertical)
            .padding(.leading)
            .padding(.trailing, 4)
            .frame(width: UIScreen.main.bounds.width * 0.52, alignment: .leading)
            .background(challenge.backgroundColor)
            
            Rectangle()
                .fill(Color.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay(
                    Text("GIF: \(challenge.gifName)")
                        .foregroundColor(.gray)
                )
        }
        .frame(height: 230)
        .cornerRadius(15)
        .padding(.horizontal)
        .padding(.vertical, 16)
    }
}


struct ChallengesUIView: View {
    @State private var searchText: String = ""
    
    let challenges = [
        Challenge(
            title: "Pushup Contest",
            description: "Perform 20 pushups in 10 secs",
            difficulty: "Medium",
            duration: "10 sec",
            backgroundColor: LinearGradient(
                gradient: Gradient(colors: [
                                Color(red: 219/255, green: 76/255, blue: 39/255),
                                Color(red: 236/255, green: 110/255, blue: 78/255)]),
                        startPoint: .top,
                        endPoint: .bottom
                    ),
            gifName: "pushup_animation"
        ),
        Challenge(
            title: "Squats Challenge",
            description: "Perform 100 squats in 5 mins",
            difficulty: "Medium",
            duration: "5 min",
            backgroundColor: LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 21/255, green: 71/255, blue: 117/255),
                            Color(red: 39/255, green: 132/255, blue: 219/255)]),
                        startPoint: .bottom,
                        endPoint: .top
                    ),
            gifName: "squats_animation"
        ),
        Challenge(
            title: "Marathon Challenge",
            description: "Perform 400 m marathon in 1.5 mins",
            difficulty: "Easy",
            duration: "1.5 min",
            backgroundColor: LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 47/255, green: 192/255, blue: 192/255),
                            Color(red: 22/255, green: 90/255, blue: 90/255)]),
                        startPoint: .top,
                        endPoint: .bottom
                    ),
            gifName: "marathon_animation"
        )
    ]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                VStack {
                    HStack {
                        Button(action: { }) {
                            Image(systemName: "chevron.left")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Text("Challenges")
                            .font(.custom("SF Compact Rounded", size: 36))
                            .foregroundColor(.white)
                            .offset(x:-12)
                        Spacer()
                    }
                    .padding(.horizontal)
                    .offset(y: -10)
                    .padding(.top, 20)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                    .padding(.bottom, 5)
                }
                .background(Color("PageHeadingColor").opacity(0.51).blur(radius: 1))
                .cornerRadius(20)
                
                ScrollView {
                    VStack(spacing: 0) {
                        ForEach(challenges) { challenge in
                            ChallengeCard(challenge: challenge)
                        }
                    }
                    .padding(.top, 30)
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
    ChallengesUIView()
}
