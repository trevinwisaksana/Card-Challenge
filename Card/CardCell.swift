//
//  CardCell.swift
//  Card
//
//  Created by Trevin Wisaksana on 8/28/17.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import UIKit

final class CardCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupancyLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailAddressLabel: UILabel!
    @IBOutlet weak var companyWebsiteLabel: UILabel!
    @IBOutlet weak var companyAddressLabel: UILabel!
    
    func configure(_ card: Card) {
        nameLabel.text = card.name
        occupancyLabel.text = card.occupancy
        phoneNumberLabel.text = card.phoneNumber
        emailAddressLabel.text = card.email
        companyWebsiteLabel.text = card.companyWebsite
        companyAddressLabel.text = card.companyAddress
        
        defer {
            addShadow()
        }
    }
    
    private func addShadow() {
        self.layer.shadowRadius = 5
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowOpacity = 0.1
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.masksToBounds = false
    }
    
}
