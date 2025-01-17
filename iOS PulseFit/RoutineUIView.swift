import SwiftUI

struct WorkoutMuscleCard: View {
    let title: String
    let imageURL: String
    let onRemove: () -> Void
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 160, height: 160)
                .clipped()
                .cornerRadius(15)
            
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.leading, 10)
                .padding(.top, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Button(action: onRemove) {
                Image(systemName: "minus.circle.fill")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(10)
            }
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
                .frame(width: 120, height: 120)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.title2)
                    .foregroundColor(.white)
                    .offset(y:-16)
                
                Text(muscles)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .offset(y:-20)
                
                if let reps = reps {
                    Text(reps)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .offset(y:14)
                }
            }
            
            Spacer()
        }
        .padding(10)
        .background(Color("SearchBoxColor"))
        .cornerRadius(15)
    }
}

struct RoutineUIView: View {
    @State private var cards: [(title: String, imageURL: String)] = [
        ("Chest", "routine1"),
        ("Back", "routine2")
    ]
    
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
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                            .offset(x: -10)
                        Spacer()
                            
                    }
                    .padding(.horizontal)
                    .padding(.top, 20)
                }
                .padding(.bottom)
                .background(Color("PageHeadingColor"))
                
                ScrollView {
                    VStack(spacing: 24) {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 15) {
                            ForEach(cards.indices, id: \.self) { index in
                                WorkoutMuscleCard(
                                    title: cards[index].title,
                                    imageURL: cards[index].imageURL,
                                    onRemove: {
                                        cards.remove(at: index)
                                    }
                                )
                            }
                            .background(Color("SearchBoxColor"))
                            .cornerRadius(18)
                        }
                        .padding(.top,10)
                        .padding(.horizontal)
                        
                        Button(action: {
                            cards.append(("Arms", "routine3"))
                        }) {
                            HStack {
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                Text("")
                                    .foregroundColor(.white)
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [
                                        Color(red: 185/255, green: 37/255, blue: 37/255),
                                        Color(red: 83/255, green: 17/255, blue: 17/255)
                                    ]),
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                                .opacity(0.54)
                            )
                            .cornerRadius(15)
                        }
                        .padding(.horizontal)
                        
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Exercises")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .padding(.top,6)
                            
                            VStack(spacing: 16) {
                                ExerciseRow(
                                    exerciseImage: "pushup-placeholder",
                                    title: "Pushups",
                                    muscles: "Chest  Triceps",
                                    reps: "4 X 15 reps"
                                )
                                
                                ExerciseRow(
                                    exerciseImage: "pullup-placeholder",
                                    title: "Pullups",
                                    muscles: "Back  Biceps",
                                    reps: "4 X 15 reps"
                                )
                                
                                ExerciseRow(
                                    exerciseImage: "pullup-placeholder",
                                    title: "Incline Pushups",
                                    muscles: "Chest  Shoulders",
                                    reps: "4 X 15 reps"
                                )
                                
                                ExerciseRow(
                                    exerciseImage: "pullup-placeholder",
                                    title: "Decline Pulshups",
                                    muscles: "Chest  Shoulders",
                                    reps: "4 X 15 reps"
                                )
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    Button(action: {}) {
                                        Text("Start")
                                            .font(.custom("Oswald", size: 26))
                                            .foregroundColor(.white)
                                            .frame(maxWidth: .infinity)
                                            .frame(height: 60)
                                            .background(
                                                LinearGradient(
                                                    gradient: Gradient(colors: [
                                                        Color(red: 185/255, green: 37/255, blue: 37/255),
                                                        Color(red: 83/255, green: 17/255, blue: 17/255)
                                                    ]),
                                                    startPoint: .top,
                                                    endPoint: .bottom
                                                )
                                                .opacity(0.54)
                                            )
                                            .cornerRadius(15)
                                    }
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                }
                .padding(.horizontal,7)
                .padding(.top)
                
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
