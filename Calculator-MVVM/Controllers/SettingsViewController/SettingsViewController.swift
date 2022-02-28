//
//  SettingsViewController.swift
//  Calculator-MVVM
//
//  Created by ineta.magone on 11/02/2022.
//

import UIKit

class SettingsViewController: UIViewController {

    private var viewModel: SettingsViewModel?
    private let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupItems()
    }

    func configure(viewModel: SettingsViewModel) {
        self.viewModel = viewModel
    }
}

private extension SettingsViewController {
    func setupItems() {
        view.backgroundColor = .orange

        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        button.addTarget(self, action: #selector(goToCalculator), for: .touchUpInside)
        button.setTitle("Open calculator", for: .normal)
    }

    @objc func goToCalculator() {
        viewModel?.shouldOpenMainViewController()
        //viewModel?.printModel()
    }
}
