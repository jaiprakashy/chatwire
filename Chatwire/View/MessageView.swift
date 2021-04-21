//
//  MessageView.swift
//  Chatwire
//
//  Created by Jaiprakash Yadav on 20/04/21.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        ZStack {
            Color(.white)
            ScrollView(showsIndicators: false) {
                VStack {
                    StatusView()
                    
                    ForEach(0 ..< 10) { _ in
                        MessageRow()
                            .padding(.leading)
                    }
                    
                    Spacer()
                }
                .background(Color.white)
                .ignoresSafeArea()
            }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
