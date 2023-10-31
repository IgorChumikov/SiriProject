//
//  ViewController.swift
//  Number Trivia YouTube
//
//  Created by Игорь Чумиков on 31.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func getTrivia() {
        Trivia().getTrivia { trivia in
            let alert = UIAlertController(title: "Random Trivia", message: trivia, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }


}

