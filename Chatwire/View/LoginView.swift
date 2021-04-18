//
//  LoginView.swift
//  Chatwire
//
//  Created by Jaiprakash Yadav on 17/04/21.
//

import SwiftUI

struct LoginView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    @State var isLoginState = false
    @State var showImagePicker = false
    @State var selectedUIImage: UIImage?
    @State var image: Image?
    @State var isFocused = false
    
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.3176470588, green: 0.768627451, blue: 0.8274509804, alpha: 1))
            VStack {
                Spacer()
                if !isLoginState {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                }
                VStack {
                    if !isLoginState {
                        Button(action: {
                            self.showImagePicker.toggle()
                        }, label: {
                            ZStack {
                                if let image = image {
                                    image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 140, height: 140)
                                        .clipped()
                                        .clipShape(Circle())
                                        .padding(.vertical, 20)
                                } else {
                                    Image("plus_photo")
                                        .resizable()
                                        .renderingMode(.template)
                                        .scaledToFill()
                                        .foregroundColor(Color(#colorLiteral(red: 0.07058823529, green: 0.431372549, blue: 0.5098039216, alpha: 1)))
                                        .frame(width: 140, height: 140)
                                        .padding(.vertical, 20)
                                }
                            }
                        })
                        .sheet(isPresented: $showImagePicker, onDismiss: loadImage, content: {
                            ImagePicker(image: $selectedUIImage)
                        })
                    }
                    
                    if isLoginState {
                        Text("Login")
                            .font(.system(size: 50))
                            .padding(30)
                    }
                    VStack(spacing: 20) {
                        VStack(spacing: 10) {
                            if !isLoginState {
                                LoginTextField(text: $name, placeholder: "NAME", imageName: "person.crop.circle.fill", keyboardType: UIKeyboardType.alphabet, action: { self.isFocused = true })
                            }
                            LoginTextField(text: $email, placeholder: "EMAIL", imageName: "envelope", keyboardType: .emailAddress, action: { self.isFocused = true })
                            LoginTextField(text: $password, placeholder: "PASSWORD", imageName: "lock.fill", isSecure: true, keyboardType: .emailAddress, action: { self.isFocused = true })
                        }
                        .padding(.horizontal, 20)
                        
                        Button(action: {
                            print("Login Pressed")
                        }) {
                            Spacer()
                            Text(isLoginState ? "Login" : "Sign Up")
                                .font(.system(size: 17, weight: .semibold))
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .padding(20)
                        .background(Color(#colorLiteral(red: 0.07058823529, green: 0.431372549, blue: 0.5098039216, alpha: 1)))
                        .clipShape(BubbleShape(cornerRadius: 20, bubbleType: .login))
                        .shadow(color: Color(#colorLiteral(red: 0.07058823529, green: 0.431372549, blue: 0.5098039216, alpha: 1)).opacity(0.3), radius: 20, x: 0, y: 20)
                        .padding(.horizontal, 30)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        isLoginState.toggle()
                    }, label: {
                        HStack {
                            Text(isLoginState ? "Don't have an account?" : "Already have an account?")
                            Text(isLoginState ? "Sign Up" : "Sign In")
                                .bold()
                        }
                        .foregroundColor(Color(#colorLiteral(red: 0.07058823529, green: 0.431372549, blue: 0.5098039216, alpha: 1)))
                        .padding(20)
                        .padding(.bottom, 20)
                    })
                }
                .frame(height: isLoginState ? 600 : 650)
                .frame(maxWidth: .infinity)
                .background(BlurView(style: .systemMaterial))
                .clipShape(BubbleShape(cornerRadius: 45,bubbleType: .login))
                .shadow(color: Color.black.opacity(0.15), radius: 20, x: 0, y: 20)
            }
            .offset(y: isFocused ? (isLoginState ? -80 : -120) : 0)
            .animation(.easeInOut)
            .onTapGesture {
                self.isFocused = false
                self.hideKeyboard()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    func loadImage() {
        guard let selectedImage = selectedUIImage else { return }
        image = Image(uiImage: selectedImage)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
