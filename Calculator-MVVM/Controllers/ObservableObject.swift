//
//  ObservableObject.swift
//  Calculator-MVVM
//
//  Created by ineta.magone on 28/02/2022.
//

import UIKit

class ObservableObject<T> {
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    private var listener: ((T) -> Void)?
    
    init(_ value: T) {
        self.value = value
}
    
    func bind(_ listener: @escaping(T) -> Void) {
        listener(value)
        self.listener = listener
    }
}
