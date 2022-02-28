//
//  SettingsViewModel.swift
//  Calculator-MVVM
//
//  Created by ineta.magone on 11/02/2022.
//

import Foundation

class SettingsViewModel {
    var onOpenMainViewController: (() -> Void)?

    func shouldOpenMainViewController() {
        self.onOpenMainViewController?()
    }
    
//    func printModel() {
//        print("Model prints")
//    }
    

}
