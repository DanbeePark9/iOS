//
//  MakerViewController.swift
//  CompanionAnimals
//
//  Created by 박단비 on 2022/11/15.
//

import UIKit

class MakerViewController: UIViewController {

    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.descriptionTextView.text = """
        안녕하세요 단비입니다.
        제 애플리케이션을 이용해 주셔서 고맙습니다.
        제 블로그 주소는 https://ceodanbi.tistory.com 입니다.
        자주자주 놀러오세요 :D
        """
    }
    
    @IBAction func touchUpInsideDismissButton(_ sender: UIButton){
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }

    
}
