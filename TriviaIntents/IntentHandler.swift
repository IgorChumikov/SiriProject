//
//  IntentHandler.swift
//  TriviaIntents
//
//  Created by Игорь Чумиков on 31.10.2023.
//

import Intents

class GetRandomTriviaIntentHandler: NSObject, GetRandomTriviaIntentHandling {
    
    func confirm(intent: GetRandomTriviaIntent, completion: @escaping (GetRandomTriviaIntentResponse) -> Void) {
        completion(GetRandomTriviaIntentResponse(code: .ready, userActivity: nil))
    }

    func handle(intent: GetRandomTriviaIntent, completion: @escaping (GetRandomTriviaIntentResponse) -> Void) {
        Trivia().getTrivia { trivia in
            completion(.success(trivia: trivia))
        }
    }
}

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> Any {
        guard intent is GetRandomTriviaIntent else {
            fatalError("FatalError")
        }
        
        
        return GetRandomTriviaIntentHandler()
    }
    
}
