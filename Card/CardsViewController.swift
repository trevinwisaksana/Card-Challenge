//
//  CardsViewController.swift
//  Card
//
//  Created by Trevin Wisaksana on 8/28/17.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import UIKit


final class CardsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    /* ============= IBOutlets ============ */
    
    @IBOutlet var viewModel: CardsViewModel!
    @IBOutlet weak var cardsCollectionView: UICollectionView!
    
    
    /* ============= IBAction ============ */
    
    @IBAction func createCardButtonAction(_ sender: Any) {
        presentCreateCardViewController()
    }
    
    /* ============= Private Methods ============ */
    
    private func presentCreateCardViewController() {
        let createCardViewController = storyboard?.instantiateViewController(withIdentifier: "CreateCardViewController") as! CreateCardViewController
        present(createCardViewController, animated: true, completion: nil)
    }
    
    /* ============= Collection View ============ */
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // TODO: Return the number of cards inside the listOfCards array
        let numberOfCards = viewModel.numberOfCards()
        return numberOfCards
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! CardCell
        
        // TODO: Access the list of cards in the view model
        let cardData = viewModel.accessCardDataAt(indexPath)
        cell.configure(cardData)
        
        return cell
    }
    
}
