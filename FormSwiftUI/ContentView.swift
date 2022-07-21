//
//  ContentView.swift
//  FormSwiftUI
//
//  Created by fachru dahri on 20/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                // section profile
                Section() {
                    NavigationLink(destination: About()) {
                        HStack {
                            // profile picture
                            Image("cindy")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            // Name & Title
                            VStack(alignment: .leading) {
                                Text("Cindy Rolexza")
                                    .font(.headline)
                                Text("Medical Student")
                                    .font(.caption)
                            }
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                        }
                    }
                }.navigationTitle("Setting")
                
                // section general setting
                Section(header: Text("General Setting")) {
                    HStack(spacing:20) {
                        Image(systemName: "star.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        
                        Text("Star Messages")
                    }
                    HStack(spacing:20) {
                        Image(systemName: "icloud.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        
                        Text("Backup Data")
                    }
                    HStack(spacing:20) {
                        Image(systemName: "tv.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.gray)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        
                        Text("Cast Monitor")
                    }
                }
                
                // section account setting
                Section(header: Text("Account Setting")) {
                    HStack(spacing:20) {
                        Image(systemName: "person.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.yellow)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        
                        Text("Account")
                    }
                    HStack(spacing:20) {
                        Image(systemName: "message.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        
                        Text("Chat")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct About: View {
    var body: some View {
        Text("About Page")
    }
}
