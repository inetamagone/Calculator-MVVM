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
}
