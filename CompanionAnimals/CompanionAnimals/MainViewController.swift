//
//  MainViewController.swift
//  CompanionAnimals
//
//  Created by 박단비 on 2022/11/15.
//

import UIKit

class MainViewController: UIViewController {

    private enum ButtonTag: Int {
        case dog = 101
        case cat, rabbit, hedgehog
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func animalInfo(for tag: ButtonTag) -> AnimalInfo? {
        let assetName: String
        
        switch tag {
        case ButtonTag.dog:
            assetName = "Dog"
        case ButtonTag.cat:
            assetName = "Cat"
        case ButtonTag.rabbit:
            assetName = "Rabbit"
        case ButtonTag.hedgehog:
            assetName = "Hedgehog"
        }
        return AnimalInfo.decode(from: assetName)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //segue = 이 메소드가 호출되게 만드는 장본인
        //sender = 호출하는 장본인
        guard let button: UIButton = sender as? UIButton else {return}
        guard let nextViewController: DescriptionViewController = segue.destination as? DescriptionViewController else {return}
        //sender 가 내가 지정한 그 버튼인지 확인하기
        guard let tag: ButtonTag = ButtonTag(rawValue: button.tag) else {
            print("버튼의 태그를 enum으로 변경 불가")
            return
        }
        // 동물에 대한 정보 가져오기
        guard let info: AnimalInfo = self.animalInfo(for: tag) else {return}
        nextViewController.animalInfo = info
    }
}
