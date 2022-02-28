//
//  ViewController.swift
//  Calculator-MVVM
//
//  Created by ineta.magone on 11/02/2022.
//

import UIKit

class MainViewController: UIViewController {
    
    private var mainViewModel = MainViewModel()
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBinders()
    }
    
    // For the alert message
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        mainViewModel.displayGreetingsMessage()
    }
    
    private func setupBinders() {
        mainViewModel.greetingsMessage.bind {
            [weak self] greetingsMessage in
            if let message = greetingsMessage {
                self?.presentAlert(message: message)
            }
        }
    }
    
    @IBAction func numberButtonTapped(_ sender: UIButton) {
        guard let labelText: String = sender.titleLabel?.text else {return}
        mainViewModel.numberTapped(screenText: resultLabel, number: labelText)
    }
    
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        guard let labelText: String = sender.titleLabel?.text else {return}
        mainViewModel.operandTapped(screenText: resultLabel, operand: labelText)
    }
    
    @IBAction func equalButtonTapped(_ sender: UIButton) {
        mainViewModel.equalTapped(screenText: resultLabel)
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        mainViewModel.clearTapped(screenText: resultLabel)
    }
    
    func presentAlert(message: String) {
        let alertVC = UIAlertController(title: "Success" , message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        return self.present(alertVC, animated: true, completion: nil)
    }
}
