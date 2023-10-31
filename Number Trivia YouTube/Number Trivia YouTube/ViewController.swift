//
//  ViewController.swift
//  Number Trivia YouTube
//
//  Created by Игорь Чумиков on 31.10.2023.
//
// https://www.youtube.com/watch?v=RStVmXGRXtg

import UIKit
import Intents

class ViewController: UIViewController {

    @IBAction func getTrivia() {
        Trivia().getTrivia { trivia in
            DispatchQueue.main.async {
                let alert = UIAlertController(title: "Random Trivia", message: trivia, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true)
                INInteraction(intent: GetRandomTriviaIntent(), response: nil).donate(completion: nil)
            }
        }
    }


}

