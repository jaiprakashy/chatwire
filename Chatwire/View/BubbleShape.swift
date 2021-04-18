//
//  BubbleShape.swift
//  Chatwire
//
//  Created by Jaiprakash Yadav on 17/04/21.
//

import SwiftUI

enum BubbleType {
    case login
    case currentUserChat
    case partnerChat
}

struct BubbleShape: Shape {
    var cornerRadius = 16
    var bubbleType: BubbleType
    
    func path(in rect: CGRect) -> Path {
        let path: UIBezierPath
        switch bubbleType {
        case .login:
            path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .bottomRight, .bottomLeft], cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        case .currentUserChat:
            path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, .bottomLeft], cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        case .partnerChat:
            path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, .bottomRight], cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        }
        
        return Path(path.cgPath)
    }
}
