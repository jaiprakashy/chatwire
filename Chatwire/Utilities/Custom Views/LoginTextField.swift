//
//  LoginTextField.swift
//  Chatwire
//
//  Created by Jaiprakash Yadav on 18/04/21.
//

import SwiftUI

struct LoginTextField: View {
    typealias TextFieldAction = () -> Void
    
    @Binding var text: String
    let placeholder: String
    let imageName: String
    let isSecure: Bool
    let keyboardType: UIKeyboardType
    let action: TextFieldAction
    
    init(text: Binding<String>, placeholder: String, imageName: String, isSecure: Bool = false, keyboardType: UIKeyboardType, action: @escaping TextFieldAction) {
        self._text = text
        self.placeholder = placeholder
        self.imageName = imageName
        self.isSecure = isSecure
        self.keyboardType = keyboardType
        self.action = action
    }
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color(#colorLiteral(red: 0.6549019608, green: 0.7137254902, blue: 0.862745098, alpha: 1)))
                    .frame(width: 44, height: 44)
                    .background(Color("background1"))
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                    .padding(.leading)
                
                if isSecure {
                    SecureField("Password".uppercased(), text: $text)
                        .keyboardType(keyboardType)
                        .font(.subheadline)
                        //                    .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.leading)
                        .frame(height: 44)
                        .onTapGesture {
                            action()
                        }
                } else {
                    TextField(placeholder.uppercased(), text: $text)
                        .keyboardType(keyboardType)
                        .font(.subheadline)
                        //                    .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.leading)
                        .frame(height: 44)
                        .onTapGesture {
                            action()
                        }
                }
            }
            Divider()
                .padding(.leading, 80)
                .padding(.trailing, 20)
        }
    }
}

struct LoginTextField_Previews: PreviewProvider {
    static var previews: some View {
        LoginTextField(text: .constant(""), placeholder: "EMAIL", imageName: "person.crop.circle.fill", keyboardType: .emailAddress, action: {})
    }
}
