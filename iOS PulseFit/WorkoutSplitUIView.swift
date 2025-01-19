import SwiftUI

struct WorkoutSplitButton: View {
    let title: String
    
    var body: some View {
        Button(action: {}) {
            HStack {
                Text(title)
                    .font(.custom("Oswald", size: 18))
                    .foregroundColor(.white)
                    .padding(.leading,26)
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 70)
            .background(Color.gray.opacity(0.3))
            .cornerRadius(14)
            .padding(.bottom,6)
        }
    }
}

struct WorkoutSplitUIView: View {
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
                        Text("Workout Split")
                            .font(.custom("SF Compact Rounded", size: 34))
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
                    VStack(spacing: 28) {
                        Text("Choose your workout split")
                            .font(.custom("Roboto-Condensed", size: 26))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top,28)
                            .padding(.horizontal)
                        
                        VStack(spacing: 16) {
                            WorkoutSplitButton(title: "Chest Workout")
                            WorkoutSplitButton(title: "Back Workout")
                            WorkoutSplitButton(title: "Arm Workout")
                            WorkoutSplitButton(title: "Shoulder Workout")
                            WorkoutSplitButton(title: "Legs Workout")
                            WorkoutSplitButton(title: "Full Body Workout")
                            
                            Button(action: {}) {
                                Text("Next")
                                    .font(.custom("Oswald",size: 26))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 60)
                                    .background(Color("SearchBoxColor"))
                                    .cornerRadius(22)
                            }
                            .padding(.top, 8)
                            .padding(.horizontal)
                        }
                        .padding(.horizontal)
                    }
                    .padding(.horizontal,10)
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
        .navigationBarHidden(true)
    }
}

#Preview {
    WorkoutSplitUIView()
}
