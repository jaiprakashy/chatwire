//
//  GroupView.swift
//  Chatwire
//
//  Created by Jaiprakash Yadav on 20/04/21.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9415565729, green: 0.9454619288, blue: 0.9520495534, alpha: 1))
            ScrollView {
                LazyVGrid(columns: [GridItem(), GridItem()]) {
                    ForEach(0 ..< 15) { _ in
                        GroupItem()
                            .background(Color(#colorLiteral(red: 0.9999126792, green: 1, blue: 0.9998814464, alpha: 1)))
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                            .shadow(color: Color(#colorLiteral(red: 0.9999126792, green: 1, blue: 0.9998814464, alpha: 1)), radius: 1, x: 0.0, y: 0.0)
                            .padding(4)
                    }
                }
                .padding()
            }
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
