

import Foundation
import Alamofire

class StarwarsApiService{
        
   private let baseUrl = "https://swapi.dev/api/people/1/"
   private var characterViewController: CharacterViewController
    
    init (viewController: CharacterViewController){
        self.characterViewController = viewController
    }
    
    public func getStarwarsData(){
         AF.request(baseUrl)
             .responseDecodable(of: StarwarsCharacter.self) { (response) in
                 guard let starwarsCharacter = response.value else { self.characterViewController.showError()
                     return
                 }
                 
                 self.characterViewController.updateDataCharacter(character: starwarsCharacter)
            }
    }
}
