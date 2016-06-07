//
//  Card.swift
//  DeckofCardsStretch
//
//  Created by Eva Marie Bresciano on 6/7/16.
//  Copyright © 2016 Eva Bresciano. All rights reserved.
//

import Foundation

class Card {
    
    let value: String
    let suit: String
    
    init?(dictionary: [String:AnyObject]) {
        guard let value = dictionary["value"] as? String,
            suit = dictionary["suit"] as? String else { return nil }
    
    
    self.value = value
    self.suit = suit
    
  }
}