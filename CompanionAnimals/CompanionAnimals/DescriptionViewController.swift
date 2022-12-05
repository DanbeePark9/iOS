//
//  DescriptionViewController.swift
//  CompanionAnimals
//
//  Created by 박단비 on 2022/11/15.
//

import UIKit

class DescriptionViewController: UIViewController {

    var animalInfo : AnimalInfo!
    
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = self.animalInfo.name
        self.animalImageView.image = UIImage(named: self.animalInfo.imageName)
        self.nameLabel.text = self.animalInfo.name
        self.descriptionTextView.text = self.animalInfo.animalDescription
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
