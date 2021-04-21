//
//  GroupItem.swift
//  Chatwire
//
//  Created by Jaiprakash Yadav on 20/04/21.
//

import SwiftUI

struct GroupItem: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "star.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(#colorLiteral(red: 0.9763038754, green: 0.7818731666, blue: 0.3259490728, alpha: 1)))
                Spacer()
                Image(systemName: "ellipsis")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .rotationEffect(.radians(.pi / 2))
            }
            
            Image("Avatar")
                .resizable()
                .scaledToFit()
                .frame(width: 72, height: 72)
                .clipShape(Circle())
            
            Text("Office Colleague")
                .font(.system(size: 16, weight: .semibold))
            
            HStack {
                ForEach(0 ..< 5) { index in
                    Image("Avatar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                        .zIndex(Double(5 - index))
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 2)
                        )
                        .padding(.leading, -16)
                }
            }
            .padding(.bottom)
        }
        .padding()
    }
}

struct GroupItem_Previews: PreviewProvider {
    static var previews: some View {
        GroupItem()
    }
}
