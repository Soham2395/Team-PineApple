//
//  NotificationsUIView.swift
//  iOS PulseFit
//
//  Created by Soham Chakraborty on 19/01/25.
//

import SwiftUI

struct NotificationCard: View {
    let username: String
    let streak: String
    
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Circle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "person.2.fill")
                            .foregroundColor(.white)
                    )
                    .offset(y:-2)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("\(username) has sent you a friend request")
                        .foregroundColor(.white)
                        .font(.custom("Roboto-Condensed", size: 16))
                    
                    HStack(spacing: 4) {
                        Text(streak)
                            .foregroundColor(.white)
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal)
            
            VStack(spacing: 12) {
                Button(action: {}) {
                    Text("Accept")
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(Color.white.opacity(0.08))
                        .cornerRadius(12)
                }
                
                Button(action: {}) {
                    Text("Reject")
                        .foregroundColor(.red)
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(LinearGradient(
                            gradient: Gradient(colors: [
                                            Color(red: 255/255, green: 0/255, blue: 0/255).opacity(0.22),
                                            Color(red: 153/255, green: 0/255, blue: 0/255).opacity(0.22)]),
                                    startPoint: .top,
                                    endPoint: .bottom
                                ))
                        .cornerRadius(12)
                }
            }
            .padding(.horizontal)
        }
        .padding(.vertical)
        .background(Color("PageHeadingColor").opacity(0.51))
        .cornerRadius(15)
    }
}

struct NotificationsUIView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                VStack {
                    HStack {
                        Button(action: { }) {
                            Image(systemName: "chevron.up")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Text("Notifications")
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
                    VStack(spacing: 16) {
                        if true {
                            NotificationCard(username: "Raju_198", streak: "572🔥")
                            NotificationCard(username: "Jett-Daeval", streak: "100🔥")
                        } else {
                            Text("No notifications yet!")
                                .foregroundColor(.gray)
                                .padding(.top, 40)
                        }
                    }
                    .padding()
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
    NotificationsUIView()
}
