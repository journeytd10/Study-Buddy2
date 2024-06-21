//
//  OpenAIAPI.swift
//  Study Buddy 2.0
//
//  Created by Journey Galore on 6/21/24.
//

import Foundation

class OpenAIAPI: ObservableObject {
    private let apiKey = Config.openAIAPIKey // Use the API key from the Config struct
    
    func sendPrompt(_ prompt: String, completion: @escaping (String?) -> Void) {
        guard let url = URL(string: "https://api.openai.com/v1/engines/davinci-codex/completions") else {
            completion(nil)
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let parameters: [String: Any] = [
            "prompt": prompt,
            "max_tokens": 150
        ]
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else {
            completion(nil)
            return
        }
        
        request.httpBody = httpBody
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            if let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
               let choices = json["choices"] as? [[String: Any]],
               let text = choices.first?["text"] as? String {
                completion(text.trimmingCharacters(in: .whitespacesAndNewlines))
            } else {
                completion(nil)
            }
        }.resume()
    }
}
