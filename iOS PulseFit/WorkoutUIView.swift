import SwiftUI

struct WorkoutCard: View {
    let title: String
    let difficulty: String
    let imageName: String
    let offsetX: CGFloat
    
    var body: some View {
        NavigationLink(destination: Text(title)) {
            ZStack(alignment: .leading) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:150,height: 130)
                    .offset(x: offsetX)
                
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(title)
                            .font(.custom("Roboto-Condensed", size: 26))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text(difficulty)
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            .background(Color.white.opacity(0.1))
                            .cornerRadius(20)
                            .offset(y:5)
                    }
                    .padding()
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                        .padding()
                }
            }
            .background(Color("SearchBoxColor"))
            .cornerRadius(15)
            .padding(.horizontal)            
        }
    }
}

struct TabBarButton: View {
    let imageName: String
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                Image(systemName: imageName)
                    .foregroundColor(isSelected ? .white : .gray)
                Text(title)
                    .font(.caption)
                    .foregroundColor(isSelected ? .white : .gray)
            }
        }
    }
}

struct WorkoutUIView: View {
    @State private var searchText: String = ""
    @State private var selectedTab = "Workout"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                HStack {
                    Text("Workout")
                        .font(.custom("Oswald", size: 44))
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.bottom)
                .background(
                    Color("PageHeadingColor")
                        .opacity(0.51)
                        .blur(radius: 1)
                )
                
                ScrollView {
                    VStack(spacing: 16) {
                        // Search Box
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
                        .padding(.horizontal)
                        
                        HStack(spacing: 20) {
                            NavigationLink(destination: Text("Challenges")) {
                                HStack {
                                    Image(systemName: "gamecontroller")
                                    Text("Challenges")
                                    Image(systemName: "chevron.right")
                                }
                                .font(.custom("Oswald", size: 18))
                                .foregroundColor(.white)
                                .opacity(0.61)
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 75)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [
                                            Color(red: 225/255, green: 84/255, blue: 62/255),
                                            Color(red: 123/255, green: 46/255, blue: 34/255)
                                        ]),
                                        startPoint: .top,
                                        endPoint: .bottom
                                    )
                                )
                                .cornerRadius(15)
                            }

                            NavigationLink(destination: Text("Today's Split")) {
                                HStack {
                                    Image(systemName: "checklist")
                                    Text("Today's Split")
                                    Image(systemName: "chevron.right")
                                }
                                .font(.custom("Oswald", size: 18))
                                .foregroundColor(.white)
                                .opacity(0.61)
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 75)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [
                                            Color(red: 126/255, green: 96/255, blue: 191/255),
                                            Color(red: 59/255, green: 45/255, blue: 89/255)
                                        ]),
                                        startPoint: .top,
                                        endPoint: .bottom
                                    )
                                )
                                .cornerRadius(15)
                            }
                        }
                        .padding(.horizontal)
                        
                        VStack(alignment: .leading, spacing: 18) {
                            Text("Workouts")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                            
                            WorkoutCard(title: "Upper Body", difficulty: "Easy", imageName: "workout1", offsetX: 150)
                            WorkoutCard(title: "Lower Body", difficulty: "Easy", imageName: "workout2", offsetX: 170)
                            WorkoutCard(title: "Arm Builder", difficulty: "Hard", imageName: "workout3", offsetX: 140)
                            WorkoutCard(title: "Core Create", difficulty: "Hard", imageName: "workout4", offsetX: 190)
                            WorkoutCard(title: "Shoulder Boulder", difficulty: "Hard", imageName: "workout5", offsetX: 130)
                            WorkoutCard(title: "Shoulder Boulder", difficulty: "Hard", imageName: "workout6", offsetX: 160)
                        }
                        .padding(.top, 30)
                    }
                    .padding(.top, 35)
                }
                
                HStack(spacing: 0) {
                    TabBarButton(imageName: "house.fill", title: "Home", isSelected: selectedTab == "Home") {
                        selectedTab = "Home"
                    }
                    
                    TabBarButton(imageName: "dumbbell.fill", title: "Workout", isSelected: selectedTab == "Workout") {
                        selectedTab = "Workout"
                    }
                    
                    TabBarButton(imageName: "person.2.fill", title: "Coach", isSelected: selectedTab == "Coach") {
                        selectedTab = "Coach"
                    }
                    
                    TabBarButton(imageName: "fork.knife", title: "Diet", isSelected: selectedTab == "Diet") {
                        selectedTab = "Diet"
                    }
                    
                    TabBarButton(imageName: "person.circle", title: "Profile", isSelected: selectedTab == "Profile") {
                        selectedTab = "Profile"
                    }
                }
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity)
                .background(Color.black.opacity(0.8))
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
    WorkoutUIView()
}
