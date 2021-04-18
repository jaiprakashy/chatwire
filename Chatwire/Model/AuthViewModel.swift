//
//  AuthViewModel.swift
//  Chatwire
//
//  Created by Jaiprakash Yadav on 18/04/21.
//

import Foundation

class AuthViewModel: ObservableObject {
    @Published var isAuthenticated: Bool = false
    
    static let shared = AuthViewModel()
}
