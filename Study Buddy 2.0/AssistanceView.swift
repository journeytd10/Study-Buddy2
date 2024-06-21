//
//  AssistanceView.swift
//  Study Buddy 2.0
//
//  Created by Journey Galore on 6/21/24.
//

import SwiftUI

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isUser: Bool
}

struct AssistanceView: View {
    @State private var messages: [Message] = []
    @State private var inputText: String = ""
    @ObservedObject private var api = OpenAIAPI()

    var body: some View {
        VStack {
            ScrollView {
                ForEach(messages) { message in
                    HStack {
                        if message.isUser {
                            Spacer()
                            Text(message.text)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        } else {
                            Text(message.text)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            Spacer()
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 4)
                }
            }
            
            HStack {
                TextField("Enter your message...", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(minHeight: 30)
                
                Button(action: sendMessage) {
                    Text("Send")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            HStack {
                Button(action: {
                    inputText = "How can I improve my [insert issue] in this text [insert work]."
                }) {
                    Text("Feedback")
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                
                Button(action: {
                    inputText = "Please create [insert] practice questions in [format] style based on [insert notes or topic]."
                }) {
                    Text("Practice Questions")
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                
                Button(action: {
                    inputText = "Act as [insert celeb/comedian] and explain [insert topic]."
                }) {
                    Text("Explanation")
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .navigationBarTitle("Assistance")
    }
    
    private func sendMessage() {
        let userMessage = Message(text: inputText, isUser: true)
        messages.append(userMessage)
        
        api.sendPrompt(inputText) { response in
            guard let response = response else { return }
            let aiMessage = Message(text: response, isUser: false)
            DispatchQueue.main.async {
                messages.append(aiMessage)
            }
        }
        
        inputText = ""
    }
}

struct AssistanceView_Previews: PreviewProvider {
    static var previews: some View {
        AssistanceView()
    }
}

