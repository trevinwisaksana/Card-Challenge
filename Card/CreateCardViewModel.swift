//
//  CreateCardViewModel.swift
//  Card
//
//  Created by Trevin Wisaksana on 9/29/17.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import Foundation


final class CreateCardViewModel: NSObject {
    
    private let card = Card()
    
    func createCard(name: String, email: String, phoneNumber: String, occupation: String, companyAddress: String?, companyWebsite: String?) -> Card {
        
        // card.name = ...
        // card.email = ...
        // card.phoneNumber = ...
        // card.occupancy = ...
        // card.companyAddress = ...
        // card.companyWebsite = ...
        
        return card
    }
    
}
