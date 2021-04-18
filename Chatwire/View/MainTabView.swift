//
//  MainTabView.swift
//  Chatwire
//
//  Created by Jaiprakash Yadav on 18/04/21.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView() {
            Text("Profile")
                .tabItem { Image(systemName: "person.fill") }
            
            ChatViewHome()
                .tabItem { Image(systemName: "message.fill") }
            
            Text("Settings")
                .tabItem { Image(systemName: "gear") }
        }
        .accentColor(Color(#colorLiteral(red: 0.1725490196, green: 0.7254901961, blue: 0.6901960784, alpha: 1)))
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
