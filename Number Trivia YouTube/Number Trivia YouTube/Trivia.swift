//
//  Trivia.swift
//  Number Trivia YouTube
//
//  Created by Игорь Чумиков on 31.10.2023.
//

import Foundation

class Trivia {
    
    func getTrivia(completionHandler: @escaping (String) -> Void) {
        // Создаем URL для запроса
        if let triviaURL = URL(string: "http://numbersapi.com/random/trivia") {
            // Создаем сессию URLSession
            let session = URLSession.shared
            
            // Создаем задачу для выполнения GET-запроса
            let task = session.dataTask(with: triviaURL) { (data, response, error) in
                if let error = error {
                    // Обработка ошибки, если она есть
                    print("Ошибка при выполнении запроса: \(error)")
                } else if let data = data,
                          let triviaText = String(data: data, encoding: .utf8) {
                    // Обработка успешного ответа и получение текста
                    completionHandler(triviaText)
                }
            }
            
            // Запускаем задачу
            task.resume()
        }
    }
}

