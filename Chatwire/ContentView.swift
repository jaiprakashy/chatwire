//
//  ContentView.swift
//  Chatwire
//
//  Created by Jaiprakash Yadav on 17/04/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.isAuthenticated {
//                NavigationView {
                    MainTabView()
//                }
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
