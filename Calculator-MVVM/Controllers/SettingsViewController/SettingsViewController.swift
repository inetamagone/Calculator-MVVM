//
//  SettingsViewController.swift
//  Calculator-MVVM
//
//  Created by ineta.magone on 11/02/2022.
//

import UIKit

class SettingsViewController: UIViewController {

    private var viewModel = SettingsViewModel()
    private let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupItems()
    }
}

private extension SettingsViewController {
    func setupItems() {
        view.backgroundColor = .blue

        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 65),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -65),
            button.heightAnchor.constraint(equalToConstant: 70)
        ])
        button.addTarget(self, action: #selector(goToCalculator), for: .touchUpInside)
        button.setTitle("Open Calculator", for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 10
    }

    @objc func goToCalculator() {
        openCalculator()
    }
        
    func openCalculator() {
        let mainViewController = storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        present(mainViewController, animated: true, completion: nil)
    }
}
