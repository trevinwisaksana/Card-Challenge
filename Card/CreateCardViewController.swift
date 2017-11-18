//
//  CreateCardViewController.swift
//  Card
//
//  Created by Trevin Wisaksana on 9/20/17.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import UIKit

final class CreateCardViewController: UIViewController {
    
    /* ===== IBOutlets ====== */
    
    @IBOutlet var mainView: CreateCardMainView!
    @IBOutlet var viewModel: CreateCardViewModel!
    
    /* ===== IBActions ====== */
    
    @IBAction func addButtonAction(_ sender: Any) {
        addCard()
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /* ======= Logic ======= */
    
    private func prepareCard() -> Card? {
        guard
            let fullName = mainView.fullNameTextField.text,
            let email = mainView.emailAddressTextField.text,
            let phoneNumber = mainView.phoneNumberTextField.text,
            let occupation = mainView.occupationTextField.text
            else {
                return nil
        }
        
        let companyAddress = mainView.companyAddressTextField.text
        let companyWebsite = mainView.companyWebsiteTextField.text
        // TODO: Create the card in the view model
        // return viewModel.createCard(fullName: fullName, email: email, phoneNumber: phoneNumber, occupation: occupation, companyAddress: companyAddress, companyWebsite: companyWebsite)
    }
    
    private func addCard() {
        let cardsVC = presentingViewController as? CardsViewController
        guard let card = prepareCard() else { return }
        // TODO: Add the card to CardsViewModel 
        cardsVC?.cardsCollectionView.reloadData()
        defer {
            dismiss(animated: true, completion: nil)
        }
    }
    
}
