

import UIKit

class CharacterViewController: UIViewController{
  
    // in case we want to change the image dynamic
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var hairColorLabel: UILabel!
    @IBOutlet weak var skinColorLabel: UILabel!
    @IBOutlet weak var eyeColorLabel: UILabel!
    @IBOutlet weak var birthColorLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var homeworldLabel: UILabel!
    @IBOutlet weak var filmsLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var starshipsLabel: UILabel!
    @IBOutlet weak var createdLabel: UILabel!
    @IBOutlet weak var editedLabel: UILabel!
     
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let starwarsService = StarwarsApiService(viewController: self )
        starwarsService.getStarwarsData()
    }
    
  public func updateDataCharacter(character: StarwarsCharacter){
        nameLabel.text = "Name: \(character.name)"
        heightLabel.text = "Height: \(character.height)"
        massLabel.text = "Mass: \(character.mass)"
        hairColorLabel.text = "Hair color: \(character.hairColor)"
        skinColorLabel.text = "Skin color: \(character.skinColor)"
        eyeColorLabel.text = "Eye color: \(character.eyeColor)"
        birthColorLabel.text = "Birth Year: \(character.birthYear)"
        genderLabel.text = "Gender color: \(character.gender)"
        homeworldLabel.text = "Homeworld: \(character.homeworld)"
        filmsLabel.text = "Films: \(character.films)"
        speciesLabel.text = "Species: \(character.species)"
        starshipsLabel.text = "Starships: \(character.starships)"
        createdLabel.text  = "Created: \(character.created)"
        editedLabel.text = "Edited: \(character.edited)"
    }
    
    public func showError(){
        print("request failed")
    }
  }
