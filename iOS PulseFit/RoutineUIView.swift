import SwiftUI

struct WorkoutMuscleCard: View {
    let title: String
    let imageURL: String
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(width: 160, height: 160)
                .cornerRadius(15)
                .overlay(
                    Text(title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.leading)
                        .padding(.top),
                    alignment: .topLeading
                )
            
            Button(action: {}) {
                Image(systemName: "minus.circle.fill")
                    .foregroundColor(.white)
                    .font(.title2)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
}

struct ExerciseRow: View {
    let exerciseImage: String
    let title: String
    let muscles: String
    let reps: String?
    
    var body: some View {
        HStack(spacing: 16) {
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(width: 80, height: 80)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.title3)
                    .foregroundColor(.white)
                
                Text(muscles)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                if let reps = reps {
                    Text(reps)
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
            }
            
            Spacer()
        }
        .padding()
        .background(Color.black.opacity(0.3))
        .cornerRadius(15)
    }
}

struct RoutineUIView: View {
    @State private var searchText: String = ""
    @State private var selectedTab = "Home"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                VStack {
                    HStack {
                        Button(action: { }) {
                            Image(systemName: "chevron.left")
                                .font(.title2)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Text("Routine")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.top, 20)
                }
                .padding(.bottom)
                .background(Color("PageHeadingColor"))
                ScrollView {
                    VStack(spacing: 24) {
                        HStack(spacing: 15) {
                            WorkoutMuscleCard(title: "Chest", imageURL: "chest-placeholder")
                            WorkoutMuscleCard(title: "Back", imageURL: "back-placeholder")
                        }
                        .padding(.horizontal)
                        
                        
                        Button(action: {}) {
                            HStack {
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.red.opacity(0.3))
                            .cornerRadius(15)
                        }
                        .padding(.horizontal)
                        
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Exercises")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                            
                            VStack(spacing: 16) {
                                ExerciseRow(
                                    exerciseImage: "pushup-placeholder",
                                    title: "Pushups",
                                    muscles: "Chest, Triceps",
                                    reps: "4 X 15 reps"
                                )
                                
                                ExerciseRow(
                                    exerciseImage: "pullup-placeholder",
                                    title: "Pullups",
                                    muscles: "Back, Biceps",
                                    reps: nil
                                )
                            }
                            .padding(.horizontal)
                        }
                    }
                    .padding(.top)
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
    RoutineUIView()
}
