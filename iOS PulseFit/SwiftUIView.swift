//
//  SwiftUIView.swift
//  iOS PulseFit
//
//  Created by Soham Chakraborty on 13/01/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    VStack(spacing: 10) {
                        HStack(spacing: 20) {
                            ZStack {
                                Circle()
                                    .fill(
                                        LinearGradient(
                                            gradient: Gradient(colors:[Color("BGColor"), Color("BgColor2")]),
                                            startPoint: .top,
                                            endPoint: .bottom
                                        )
                                    )
                                    .frame(width: 124, height: 110)
                                
                                Image("bjuice")
                                    .resizable()
                                    .frame(width: 124, height: 110)
                                    .clipShape(Circle())
                            }
                            
                            
                            VStack(alignment: .leading) {
                                Text("Singh")
                                    .fontWeight(.bold)
                                
                                    .font(.custom("SF Compact Rounded", size: 22))
                                    .foregroundColor(.white)
                                
                                Text("Uddeshya")
                                    .font(.custom("SF Compact Rounded", size: 22))
                                    .fontWeight(.light)
                                    .foregroundColor(.white)
                                Spacer()
                                HStack {
                                    Text("382")
                                        .foregroundColor(.white)
                                        .fontWeight(.medium)
                                        .font(.system(size: 22))
                                    Text("🔥")
                                        .foregroundColor(.orange)
                                        .fontWeight(.medium)
                                }
                                .offset(y: -10)
                            }
                            .frame(maxHeight: .infinity, alignment: .top)
                            
                            Spacer()
                            
                            Button(action: {
                            }) {
                                Image(systemName: "person.fill.badge.plus")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .padding(6)
                                
                            }
                            .background(Color(.white).opacity(0.07)
                            )
                            .cornerRadius(10)
                            .offset(x: -10, y: 30)
                            
                        }
                        .padding()
                        
                    }
                    .padding(.top, 60)
                    
                    
                    HStack(spacing: -20) {
                        VStack {
                            HStack {
                                Text("17")
                                    .font(.custom("Oswald", size: 68))
                                    .bold()
                                    .foregroundColor(.black)
                                    .offset(x:-14)
                                VStack (alignment: .leading){
                                    Text("Health")
                                        .offset(x:4, y:14)
                                    
                                    Text("Level")
                                        .offset(x:4, y:10)
                                        .font(.title2)
                                }
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(gradient: Gradient(colors:[Color.white, Color.gray]), startPoint: .top, endPoint: .bottom))
                        .cornerRadius(10)
                        .padding(.bottom)
                        
                        VStack {
                            HStack{
                                Text("62")
                                    .font(.custom("Oswald", size: 68))
                                    .bold()
                                    .foregroundColor(.white)
                                Image("friends")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .offset(y: 10)
                                    .foregroundColor(.white)
                                
                                
                            }
                            
                            
                        }
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(gradient: Gradient(colors: [Color("BGColor"), Color("BGColor2")]), startPoint: .top, endPoint: .bottom))
                        .cornerRadius(10)
                        .padding(.bottom)
                    }
                    .padding(.horizontal)
                    VStack(spacing: 0) {
                        MenuItem(icon: "person.fill", title: "User Details")
                        Divider().background(Color.white)
                        MenuItem(icon: "bell.fill", title: "Notifications")
                        Divider().background(Color.white)
                        MenuItem(icon: "hand.thumbsup.fill", title: "Recommendations")
                    }
                    .background(Color("PageHeadingColor").opacity(0.54)
                    )
                    .cornerRadius(10)                .shadow(color: .black.opacity(0.6), radius: 4, x: 0, y: 2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray, lineWidth: 0.8)
                    )
                    
                    VStack {
                        HStack {
                            Text("Past Statistics")
                                .font(.system(size: 32))
                                .foregroundColor(.white)
                            Spacer()
                            Button(action: {
                            }) {
                                Text("See All >")
                                    .foregroundColor(.white)
                                    .font(.subheadline)
                            }
                        }
                        .padding(.horizontal)
                        
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Avg Steps Count")
                                        .font(.custom("Roboto-Condensed", size: 24))
                                        .bold()
                                        .offset(y: 5)
                                        .foregroundColor(.white)
                                    
                                    Text("13,456")
                                        .font(.custom("Oswald", size: 50))
                                        .bold()
                                        .foregroundColor(Color("AvgCountBG"))
                                        .offset(y: 5)
                                    
                                    Text("Steps")
                                        .font(.custom("Roboto-Condensed", size: 14))
                                        .foregroundColor(.white)
                                        .offset(x: 5, y: 3)
                                }
                                
                                Spacer()
                                
                                VStack(alignment: .leading) {
                                    Text("(This Month)")
                                        .font(.footnote)
                                        .foregroundColor(.white)
                                        .offset(x:-75, y:-38)
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(LinearGradient(gradient: Gradient(colors: [Color("BGColor"), Color("BGColor2")]), startPoint: .top, endPoint: .bottom))
                            .cornerRadius(10)
                            .padding(.horizontal)
                        }


                    }
                    
                    Spacer()
                    
                    VStack {
                        HStack {
                            Text("Top Performers")
                                .font(.system(size: 32))
                                .foregroundColor(.white)
                            Spacer()
                            Button(action: {
                            }) {
                                Text("See All >")
                                    .foregroundColor(.white)
                                    .font(.subheadline)
                            }
                        }
                        .padding(.horizontal)
                        
                        VStack(alignment: .leading) {
                            HStack(spacing: 20) {
                                VStack {
                                    Image("leaderboard1")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 90, height: 90)
                                        .cornerRadius(20)
                                    
                                    Text("jettspanner123")
                                        .font(.footnote)
                                        .bold()
                                        .foregroundColor(.white)
                                        .offset(y:5)
                                    
                                    Text("1000 🔥")
                                                    .font(.footnote)
                                                    .foregroundColor(.white)
                                                    .offset(y: 5)
                                }
                                
                                VStack {
                                    Image("leaderboard2")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 90, height: 90)
                                        .cornerRadius(20)
                                    
                                    Text("ronny_Irani123")
                                        .font(.footnote)
                                        .bold()
                                        .foregroundColor(.white)
                                        .offset(y:5)
                                    
                                    Text("2000 🔥")
                                                    .font(.footnote)
                                                    .foregroundColor(.white)
                                                    .offset(y: 5)
                                }
                                
                                VStack {
                                    Image("leaderboard3")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 90, height: 90)
                                        .cornerRadius(20)
                                    
                                    Text("runy_gamer")
                                        .font(.footnote)
                                        .bold()
                                        .foregroundColor(.white)
                                        .offset(y:5)
                                    
                                    Text("3000 🔥")
                                                    .font(.footnote)
                                                    .foregroundColor(.white)
                                                    .offset(y: 5)
                                }
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(.white).opacity(0.07))
                        .cornerRadius(10)
                        .padding(.horizontal)

                    }
                    
                    Spacer()
                    
                    HStack {
                        BottomNavItem(icon: "house.fill", title: "Home")
                        BottomNavItem(icon: "figure.walk", title: "Workout")
                        BottomNavItem(icon: "person.2.fill", title: "Coach")
                        BottomNavItem(icon: "fork.knife", title: "Diet")
                        BottomNavItem(icon: "person.fill", title: "Profile", isSelected: true)
                    }
                    .padding()
                    .background(Color.black)
                    
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [Color("AppBGColor"), Color.black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea())
            .overlay{
                HStack {
                    Text("Profile")
                        .font(.custom("Oswald", size: 44))
                        .foregroundColor(.white)
                    Spacer()
                    Button(action: {
                    }) {
                        Image(systemName: "gearshape.fill")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                .padding(.horizontal)
                .background(Color("PageHeadingColor").opacity(0.51).blur(radius: 1))
                .offset(y: -370)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
        
    }
}

struct MenuItem: View {
    var icon: String
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.white)
            Text(title)
                .foregroundColor(.white)
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

struct BottomNavItem: View {
    var icon: String
    var title: String
    var isSelected: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .foregroundColor(isSelected ? .blue : .gray)
            Text(title)
                .font(.footnote)
                .foregroundColor(isSelected ? .blue : .gray)
        }
        .frame(maxWidth: .infinity)
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewDevice("iPhone 14 Pro")
    }
}

