//
//  LogInView.swift
//  Study Buddy 2.0
//
//  Created by Journey Galore on 6/20/24.
//

import SwiftUI

struct LogInView: View {
    @EnvironmentObject var settings: UserSettings
    
    @State  private var emailAddress: String = ""
    @State  private var password: String = ""
    
    var body: some View {
    GeometryReader { geometry in
            VStack (alignment: .center){
                HStack {
                    Image("2")
                    .resizable()
                    .frame(width: 20, height: 20)
                    Text("Study Buddy")
                        .font(.system(size: 12))
                        
                }.padding(.top, 30)
                .padding(.bottom, 10)
                
                Text("Log Into Your Account")
                    .font(.title)
                    .font(.system(size: 14, weight: .bold, design: Font.Design.default))
                    .padding(.bottom, 50)
                
                TextField("Email", text: self.$emailAddress)
                    .frame(width: geometry.size.width - 45, height: 50)
                    .textContentType(.emailAddress)
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                    .accentColor(.red)
                    .background(Color(red: 57, green: 78, blue: 89))
                    .cornerRadius(5)
                
                
                SecureField("Password", text: self.$password)
                    .frame(width: geometry.size.width - 45, height: 50)
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                    .foregroundColor(.gray)
                    .background(Color(red: 57, green: 78, blue: 89))
                    .textContentType(.password)
                    .cornerRadius(5)
                
                 Button(action: {
                    self.settings.loggedIn = true
                 }) {
                        HStack {
                            Text("Log In")
                        }
                            .padding()
                            .frame(width: geometry.size.width - 40, height: 40)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(5)
                    }
                     .padding(.bottom, 40)
                
                Divider()
                
                Button(action: {
                        print("Take to forget password VC")
                        }) {
                        Text("Forgot your password?")
                }
                
                Spacer()
                
            }
            .padding(.bottom, 90)
            }
    }
}
