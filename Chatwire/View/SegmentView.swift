//
//  SegmentView.swift
//  Chatwire
//
//  Created by Jaiprakash Yadav on 18/04/21.
//

import SwiftUI

enum ChatFilterOption: Int, CaseIterable {
    case message
    case group
    case calls
    
    var title: String {
        switch self {
        case .message:
            return "Message"
        case .group:
            return "Group"
        case .calls:
            return "Calls"
        }
    }
    
    var navigationTitle: String {
        switch self {
        case .message:
            return "All Messages"
        case .group:
            return "All Groups"
        case .calls:
            return "All Calls"
        }
    }
}

struct SegmentView: View {
    @Binding var selectedOption: ChatFilterOption
    
    var segmentWidth: CGFloat {
        return UIScreen.main.bounds.width / CGFloat(ChatFilterOption.allCases.count)
    }
    
    var underlineOffset: CGFloat {
        return (CGFloat(selectedOption.rawValue) * segmentWidth) + 16
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ForEach(ChatFilterOption.allCases, id: \.self) { option in
                    Button(action: {
                        self.selectedOption = option
                    }, label: {
                        Text(option.title)
                            .foregroundColor(selectedOption == option ? .white : Color.white.opacity(0.7))
                            .frame(width: segmentWidth - 8)
                    })
                }
            }
            
            Rectangle()
                .frame(width: segmentWidth - 32, height: 3, alignment: .center)
                .foregroundColor(.white)
                .padding(.leading, underlineOffset)
                .animation(.spring())
        }
    }
}

struct SegmentView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentView(selectedOption: .constant(.message))
            .background(Color.blue)
    }
}
