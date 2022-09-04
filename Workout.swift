//
//  Workout.swift
//  sportApp
//
//  Created by Maria Kogut on 04.09.2022.
//

import Foundation
class Workout {
    var title: String
    var description: String
    var repetition: Int
    
    init(title: String, description: String, repetition: Int) {
        self.title = title
        self.description = description
        self.repetition = repetition
    }
}
