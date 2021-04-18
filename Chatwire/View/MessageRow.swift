//
//  MessageRow.swift
//  Chatwire
//
//  Created by Jaiprakash Yadav on 18/04/21.
//

import SwiftUI

struct MessageRow: View {
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                ZStack(alignment: .bottomTrailing) {
                    Image("Avatar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 56, height: 56)
                        .clipShape(Circle())
                        
                    Color(#colorLiteral(red: 0.1725490196, green: 0.7254901961, blue: 0.6901960784, alpha: 1))
                        .frame(width: 16, height: 16)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 2)
                        )
                }
                .padding(.trailing, 8)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Dianna Smiley")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        Text("08/04/21")
                            .font(.system(size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 0.168627451, green: 0.1725490196, blue: 0.2, alpha: 1)))
                    }
                    .padding(.bottom, 2)
                    
                    HStack(alignment: .top) {
                        Text("Hey! Whats up, long time no see?Hey! Whats up, long time no see?Hey! Whats up, long time no see?Hey! Whats up, long time no see?")
                            .foregroundColor(Color(#colorLiteral(red: 0.168627451, green: 0.1725490196, blue: 0.2, alpha: 1)))
                            .font(.system(size: 14))
                            .lineLimit(1)
                        Spacer()
                    }
                    .padding(.bottom, 10)
                    
                    Divider()
                }
                
                Spacer()
            }
            
        }
    }
}

struct MessageRow_Previews: PreviewProvider {
    static var previews: some View {
        MessageRow()
    }
}
