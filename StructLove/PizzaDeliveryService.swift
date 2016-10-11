//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    var location: Coordinate
    var pizzasAvailable: Int = 10
    
    
    init(location: Coordinate) {
        self.location = location
    }
    
    func isInRange(to destination: Coordinate) -> Bool
    { return destination.distance(to: location) <= 5000.0 }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool
    {   var canDeliver = true
        if self.pizzasAvailable > 0 {
        if isInRange(to: destination) {
            self.pizzasAvailable -= 1
            canDeliver = true
            } else { canDeliver = false  }}
        else { canDeliver = false }
            
        return canDeliver
    }
}
