//
//  ChatViewHome.swift
//  Chatwire
//
//  Created by Jaiprakash Yadav on 18/04/21.
//

import SwiftUI

struct ChatViewHome: View {
    @State var searchText: String = ""
    @State var selectedOption: ChatFilterOption = .message
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1725490196, green: 0.7254901961, blue: 0.6901960784, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    HStack {
                        Text(selectedOption.navigationTitle)
                            .font(.system(size: 40, weight: .semibold))
                        Spacer()
                        Button(action: {}, label: {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                        })
                    }
                    .foregroundColor(.white)
                    
//                    SearchBar(text: $searchText)
                }
                .padding()
                
                SegmentView(selectedOption: $selectedOption)
                    .padding(.bottom, -8)
                
                switch selectedOption {
                case .message:
                    MessageView()
                case .group:
                    GroupView()
                case .calls:
                    MessageView()
                }
            }
        }
    }
}

struct ChatViewHome_Previews: PreviewProvider {
    static var previews: some View {
        ChatViewHome()
    }
}
