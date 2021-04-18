//
//  StatusCell.swift
//  Chatwire
//
//  Created by Jaiprakash Yadav on 18/04/21.
//

import SwiftUI

struct StatusCell: View {
    var isOnline = true
    var hasStatus = true
    
    var body: some View {
        VStack {
            Button(action: {}) {
                ZStack(alignment: .bottomTrailing) {
                    Image("Avatar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .padding(3)
                        .overlay(
                            Circle()
                                .stroke(hasStatus ? Color(#colorLiteral(red: 0.1725490196, green: 0.7254901961, blue: 0.6901960784, alpha: 1)) : Color.gray, lineWidth: 3)
                        )
                    
                    Color(#colorLiteral(red: 0.1725490196, green: 0.7254901961, blue: 0.6901960784, alpha: 1))
                        .frame(width: 16, height: 16)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 2)
                        )
                }
            }
            
            Text("Your Story")
                .foregroundColor(.black)
                .font(.system(size: 13, weight: .semibold))
        }
    }
}

struct StatusCell_Previews: PreviewProvider {
    static var previews: some View {
        StatusCell()
    }
}
