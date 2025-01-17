import SwiftUI

struct SettingsUIView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                VStack {
                    HStack {
                        Button(action: { }) {
                            Image(systemName: "chevron.down")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Text("Settings")
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
                .background(Color("PageHeadingColor").opacity(0.51).blur(radius: 1))
                .cornerRadius(20)
                
                ScrollView {
                    VStack(spacing: 30) {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("App Toggles")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .padding(.top)
                            
                            VStack(spacing: 0) {
                                NavigationLink(destination: Text("Profile")) {
                                    SettingsRow(icon: "person.fill", title: "Profile")
                                }
                                
                                NavigationLink(destination: Text("Units & Measurements")) {
                                    SettingsRow(icon: "scalemass", title: "Units & Measurements")
                                }
                                
                                NavigationLink(destination: Text("Current Membership")) {
                                    SettingsRow(icon: "dollarsign.circle", title: "Current Membership")
                                }
                                
                                NavigationLink(destination: Text("Goal")) {
                                    SettingsRow(icon: "figure.walk", title: "Goal")
                                }
                            }
                            .background(Color("SearchBoxColor").opacity(0.54))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white.opacity(0.18), lineWidth: 1)
                            )
                            .padding(.horizontal)
                        }
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Social Toggles")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                            
                            VStack(spacing: 0) {
                                NavigationLink(destination: Text("Manage Friends")) {
                                    SettingsRow(icon: "person.3.fill", title: "Manage Friends")
                                }
                                
                                NavigationLink(destination: Text("Social Status")) {
                                    SettingsRow(icon: "person.2.fill", title: "Social Status")
                                }
                                
                                NavigationLink(destination: Text("Privacy & Security")) {
                                    SettingsRow(icon: "lock.fill", title: "Privacy & Security")
                                }
                            }
                            .background(Color("SearchBoxColor").opacity(0.54))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white.opacity(0.18), lineWidth: 1)
                            )
                            .padding(.horizontal)
                        }
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

struct SettingsRow: View {
    let icon: String
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.white)
                .opacity(0.6)
                .frame(width: 30)
            
            Text(title)
                .foregroundColor(.white)
                .font(.system(size: 18))
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.clear)
        .overlay(
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(Color.white.opacity(0.1)),
            alignment: .bottom
        )
    }
}

#Preview {
    SettingsUIView()
}
