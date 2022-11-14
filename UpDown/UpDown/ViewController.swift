//
//  ViewController.swift
//  UpDown
//
//  Created by 박단비 on 2022/11/13.
//

import UIKit

// 클래스 Class/ 인스턴스 Instance/ 객체 Object
// 옵션 키 + 엔터 : 어시스턴트 에디터 파일 열림
class ViewController: UIViewController {

    // Mark:- Properties
    // Mark:- IBOutlets
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var turnCountLabel: UILabel!
    @IBOutlet var inputField: UITextField!
    
    // MARK: Stored Properties
    var randomNumber: UInt32 = 0
    var turnCount: Int = 0
    
    // MARK: Custom Methods
    func initializeGame() {
        
        self.randomNumber = arc4random() % 25
        self.turnCount = 0
        
        self.resultLabel.text = "Start!"
        self.turnCountLabel.text = "\(turnCount)"
        self.inputField.text = nil
        
        print("임의의 숫자 \(self.randomNumber)")
    }
    
    // Mark:- Methods
    @IBAction func touchUpSubmitButton(_ sender: Any) {
        
        guard let inputText = self.inputField.text,
            inputText.isEmpty == false else {
                print("입력값 없음")
                return
        }
        
        guard let inputNumber: UInt32 = UInt32(inputText) else {
            print("입력값이 잘못 되었음")
            return
        }
        
        turnCount += 1
        self.turnCountLabel.text = "\(turnCount)"
        
        if inputNumber > randomNumber {
            self.resultLabel.text = "입력한 숫자는 정답보다 UP!"
        } else if inputNumber < randomNumber {
            self.resultLabel.text = "입력한 숫자는 정답보다 DOWN!"
        } else {
            self.resultLabel.text = "정답입니다!"
        }
    }
    
    @IBAction func touchUpResetButton(_ sender: Any) {
        self.initializeGame()
    }
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.initializeGame()
    }
    ///


    /// 코드블록 3-1-6
    @IBAction func tapBackground(_ sender: UITapGestureRecognizer) {
        print("tap background view")
        
        //        self.view.endEditing(true)
        //        self.inputField.resignFirstResponder()
        //        self.inputField.endEditing(true)
        
    }

}

