//
//  ReadSwiftCode.swift
//  knowledgePlus
//
//  Created by english on 2024-02-26.
//

import UIKit

class ReadSwiftCode: UIViewController{
   
    
    var context : String = ""
    
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var descriptiontext: UILabel!
    
    func zues()-> [String]{
        return ["Zues", "Zeus is the sky and thunder god in ancient Greek religion and mythology, who rules as king of the gods on Mount Olympus. His name is cognate with the first syllable of his Roman equivalent Jupiter.", "Zues"]
    }

    
    func hercules()-> [String]{
        return ["Hercules", "Hercules is the Roman equivalent of the Greek divine hero Heracles, son of Jupiter and the mortal Alcmena. In classical mythology, Hercules is famous for his strength and for his numerous far-ranging adventures.", "Hercules"]
    }
    
    func hermes()-> [String]{
        return ["Hermes","Hermes is an Olympian deity in ancient Greek religion and mythology considered the herald of the gods. He is also considered the protector of human heralds, travelers, thieves,[2] merchants, and orators. He is able to move quickly and freely between the worlds of the mortal and the divine aided by his winged sandals. Hermes plays the role of the psychopomp or \"soul guide\"—a conductor of souls into the afterlife.", "Hermes"]
    }
    
    func poseidon() -> [String]{
        return ["Poseidon", "Poseidon is one of the Twelve Olympians in ancient Greek religion and mythology, presiding over the sea, storms, earthquakes and horses. He was the protector of seafarers and the guardian of many Hellenic cities and colonies. In pre-Olympian Bronze Age Greece, Poseidon was venerated as a chief deity at Pylos and Thebes, with the cult title \"earth shaker\"; in the myths of isolated Arcadia, he is related to Demeter and Persephone and was venerated as a horse, and as a god of the waters.", "Poseidon"]
    }

    
    func hades() -> [String] {
        return ["Hades", "Hades, in the ancient Greek religion and mythology, is the god of the dead and the king of the underworld, with which his name became synonymous. Hades was the eldest son of Cronus and Rhea, although this also made him the last son to be regurgitated by his father. He and his brothers, Zeus and Poseidon, defeated their father's generation of gods, the Titans, and claimed joint rulership over the cosmos. Hades received the underworld, Zeus the sky, and Poseidon the sea, with the solid earth (long the province of Gaia) available to all three concurrently.", "Hades"]
    }
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        
        self.context = ViewController.title
        
        var value : [String] = []
        
        switch(self.context) {
            
            case "Zeus" :
                value = zues()
                break
            
            case "Hercules":
                value = hercules()
                break
            
            case "Hermes":
                value = hermes()
                break
            
            case "Poseidon":
                value = poseidon()
                break
            
            case "Hades":
                value = hades()
                break
            
            default:
                value = zues()
                break
        }
        
        self.TitleLabel.text = value[0]
        
        self.descriptiontext.text = value[1]
        
        self.Image.image = UIImage(named: value[2])
    }
}
