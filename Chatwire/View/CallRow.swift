//
//  CallRow.swift
//  Chatwire
//
//  Created by Jaiprakash Yadav on 20/04/21.
//

import SwiftUI

struct CallRow: View {
    var body: some View {
        HStack {
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
                Text("Dianna Smiley")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.black)
                .padding(.bottom, 2)
                
                HStack(alignment: .top) {
                    Image(systemName: "phone.fill.arrow.down.left")
                        .foregroundColor(Color(#colorLiteral(red: 0.1725490196, green: 0.7254901961, blue: 0.6901960784, alpha: 1)))
                    Text("Last called 5m ago")
                        .foregroundColor(Color(#colorLiteral(red: 0.5639036894, green: 0.5639036894, blue: 0.5639036894, alpha: 1)))
                        .font(.system(size: 14))
                        .lineLimit(1)
                }
                
            }
            
            Spacer()
            
            HStack(spacing: 20) {
                Image(systemName: "video.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .foregroundColor(Color(#colorLiteral(red: 0.1725490196, green: 0.7254901961, blue: 0.6901960784, alpha: 1)))
    
                Image(systemName: "phone.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color(#colorLiteral(red: 0.3568627451, green: 0.631524086, blue: 0.9635950923, alpha: 1)))
            }
        }
        .padding(.vertical, 8)
    }
}

struct CallRow_Previews: PreviewProvider {
    static var previews: some View {
        CallRow()
    }
}
