//
//  ContentView.swift
//  Study Buddy 2.0
//
//  Created by Journey Galore on 6/03/24.
//

import SwiftUI
import Combine

class UserSettings: ObservableObject {
    @Published var loggedIn : Bool = false
    @Published var navigateNowToLogIn: Bool = false
    @Published var navigateNowToSignup: Bool = false
    
}

struct StartView: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        if settings.loggedIn {
            return AnyView(TabBarView   ())
        }else {
            return AnyView(ContentView())
        }
    }
}

struct OnboardingModel {
    var id: Int
    var image: String
    var titleText: String
    var descriptionText: String
    var showButton: Bool?
}

struct ContentView: View {
    @EnvironmentObject var settings: UserSettings
    
    var onboardingDataArray: [OnboardingModel] = [
        OnboardingModel(id: 1, image: "1", titleText: "Adaptive Learning Technology", descriptionText: " Our app's cutting-edge adaptive learning technology personalizes educational content, ensuring that each user's learning experience is tailored to their individual strengths, weaknesses, and progress, providing a truly bespoke study journey."),
        OnboardingModel(id: 2, image: "2", titleText: "Comprehensive Study Resources", descriptionText: "With an extensive library of interactive materials, practice quizzes, and flashcards, our app offers a wealth of resources across multiple subjects, making it a one-stop-shop for students aiming to deepen their understanding and excel academically."),
        OnboardingModel(id: 3, image: "3", titleText: "Real-Time Feedback and Analytics", descriptionText: "Immediate feedback and detailed analytics allow users to track their learning progress in real time, helping them to stay motivated, identify areas for improvement, and achieve their educational goals more effectively"),
        OnboardingModel(id: 4, image: "4", titleText: "Welcome!", descriptionText: "The purpose of the app is to enhance the learning experience for high school and university students by providing a personalized and interactive study assistant that utilizes artificial intelligence to adapt to each user's individual learning style and pace, offering a range of study tools and resources to improve knowledge retention and academic performance.", showButton: true)
    ]
    
    var body: some View {
    GeometryReader { geometry in
        NavigationView {
                ZStack {
                    NavigationLink(destination: LogInView(), isActive: self.$settings.navigateNowToLogIn) { EmptyView() }
                    NavigationLink(destination: SignUpView(), isActive: self.$settings.navigateNowToSignup) { EmptyView() }
                    
                    SwiftyUIScrollView(axis: .horizontal, numberOfPages: self.onboardingDataArray.count, pagingEnabled: true, pageControlEnabled: true, hideScrollIndicators: true, currentPageIndicator: .black, pageIndicatorTintColor: .gray) {
                                HStack(spacing: 0) {
                                    ForEach(self.onboardingDataArray, id: \.id) { item in
                                          OnboardingView(onboardingData: item)
                                                .frame(width: geometry.size.width, height: geometry.size.height)
                                       }
                                }
                            }.frame(width: geometry.size.width, height: geometry.size.height)
                }
            }
        }
    }
}

struct OnboardingView: View {
    var onboardingData: OnboardingModel
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 10) {
                Spacer()
                Image("\(self.onboardingData.image)")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .aspectRatio(contentMode: ContentMode.fill)
                    .clipShape(Circle())
                    .padding(20)
                
                Text("\(self.onboardingData.titleText)")
                    .frame(width: geometry.size.width, height: 20, alignment: .center)
                    .font(.title)
                
                Text("\(self.onboardingData.descriptionText)")
                    .lineLimit(nil)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    .font(.system(size: 16))
                    .frame(width: geometry.size.width, height: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                
//                Spacer(minLength: 20)
                Spacer()
                if self.onboardingData.showButton ?? false {
                    VStack {
                        Button(action: {
                           self.settings.navigateNowToLogIn = true
                        }) {
                               HStack {
                                   Text("Log In")
                               }.frame(width: geometry.size.width - 200, height: 40)
                               .foregroundColor(Color(.white))
                               .background(Color(UIColor.gray))
                               .cornerRadius(10)
                               .padding(.bottom, 5)
                           }
                        
                        Button(action: {
                                self.settings.navigateNowToSignup = true
                                }) {
                                HStack {
                                       Text("Sign Up")
                                }.frame(width: geometry.size.width - 200, height: 40)
                                  .foregroundColor(Color(.white))
                                  .background(Color(UIColor.gray))
                                  .cornerRadius(10)
                           }
                        
                    }.padding(.bottom, 30)
                }
                
                Spacer()
            }
        }
    }
}


#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
#endif
