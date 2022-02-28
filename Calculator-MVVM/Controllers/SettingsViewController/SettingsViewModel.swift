//
//  SettingsViewModel.swift
//  Calculator-MVVM
//
//  Created by ineta.magone on 11/02/2022.
//

import Foundation
import UIKit

class SettingsViewModel {

    // MARK: - Observable Object
    
    var message: ObservableObject<String?> =
    ObservableObject(nil)
    
    func displayMessage() {
        self.message.value = "Now You can Calculate!"
    }

}
