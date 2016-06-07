//
//  CardController.swift
//  DeckofCardsStretch
//
//  Created by Eva Marie Bresciano on 6/7/16.
//  Copyright © 2016 Eva Bresciano. All rights reserved.
//

import Foundation

class CardController {
    
   static let baseURL = NSURL(string:"http://deckofcardsapi.com/api/deck/new/draw/count=52")
    
    static func getCards(numberOfCards: Int, completion: (cards: [Card]) -> Void) {
        guard let unwrappedURL = self.baseURL else { fatalError() }
        NetworkController.performRequestForURL(unwrappedURL, httpMethod: .Get) { (data, error) in
            guard let data = data,
            
        }
    }
    

 
}
