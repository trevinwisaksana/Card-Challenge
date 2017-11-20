
import Foundation

final class CardsViewModel: NSObject {
    
    private var listOfCards: [Card] = []
    
    func accessCardDataAt(_ indexPath: IndexPath) -> Card {
        // TODO: Return a card from the listOfCards using the indexPath
        return listOfCards[indexPath.row]
    }
    
    func numberOfCards() -> Int {
        // TODO: Return the number of cards in the listOfCards array
        return listOfCards.count
    }
    
    func add(_ card: Card) {
        // TODO: Append the card argument to the listOfCards array
        listOfCards.append(card)
    }
    
    func removeCard(at index: Int) {
        // TODO: Remove the card on the listOfCards array using the index
        listOfCards.remove(at: index)
    }
    
}

















