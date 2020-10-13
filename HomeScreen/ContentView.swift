//
//  ContentView.swift
//  HomeScreen
//
//  Created by Luke Martin-Resnick on 10/6/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack (alignment: .bottomTrailing) {
            
            TabView {
                Home().tabItem {
                    Image(systemName: "house.fill")
                }
                Text("Twitter").tabItem {
                    Image(systemName: "magnifyingglass")
                }
                Text("Twitter").tabItem {
                    Image(systemName: "bell")
                }
                Text("Twitter").tabItem {
                    Image(systemName: "envelope")
                }
            }
            Button(action: {}) {
                Image(systemName: "paperplane.fill").resizable().frame(width: 20, height: 20).foregroundColor(.white).padding()
            }.background(Color.blue).clipShape(Circle()).padding().padding(.vertical, 50)
        }
    }
    
    struct Home: View {
        var body: some View {
            VStack {
                NavigationView {
                    ScrollView (.vertical, showsIndicators: false) {
                        VStack (alignment: .leading) {
                            Post()
                            Divider()
                            Post()
                            Divider()
                            Post()
                            Divider()
                            Post()
                            Divider()
                            Post()
                            Divider()
                            
                        }
                    }
                    .navigationBarTitle("Home", displayMode: .inline).navigationBarItems(leading: Image(systemName: "person.crop.circle.fill").resizable().frame(width: 35, height: 35).clipShape(Circle()), trailing: Image(systemName: "sparkles").resizable().frame(width: 25, height: 25).foregroundColor(.blue).clipShape(Circle()))
                }.navigationViewStyle(StackNavigationViewStyle())
            }
        }
    }
    
    struct Post: View {
        var body: some View {
            HStack (alignment: .top) {
                VStack {
                    Image(systemName: "person.crop.circle.fill").resizable().frame(width: 50, height: 50).clipShape(Circle())
                }
                
                VStack (alignment: .leading) {
                    HStack {
                        Text("Twitter User").fontWeight(.heavy)
                        Text("@twitter_user").foregroundColor(.secondary)
                        Text(". 1h").foregroundColor(.secondary)
                    }
                    Text("Twitter is the best platform. How is it still free? Best App Ever!").font(.subheadline)
                    Spacer(minLength: 5)
                    Buttons()
                }
            }.padding()
        }
    }
    
    struct Buttons: View {
        var body: some View {
            HStack (spacing: 40) {
                Button(action: {}) {
                    Image(systemName: "message")
                }.foregroundColor(.gray)
                Button(action: {}) {
                    Image(systemName: "arrow.2.squarepath")
                }
                Button(action: {}) {
                    Image(systemName: "heart")
                }
                Button(action: {}) {
                    Image(systemName: "square.and.arrow.up")
                }.foregroundColor(.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
