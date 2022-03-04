//
//  ViewController.swift
//  Odev5
//
//  Created by Furkan Erzurumlu on 4.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var allButtons: [UIButton]!
    @IBOutlet weak var resultLabel: UILabel!
    
    var number1 = 0
    var number2 = 0
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    func configureView(){
            for buttons in allButtons{
                buttons.layer.borderWidth = 3
                buttons.layer.backgroundColor = UIColor.darkGray.cgColor
                buttons.tintColor = UIColor.white
                buttons.layer.cornerRadius = 10
            }
        self.view.backgroundColor = UIColor.gray
        self.resultLabel.layer.backgroundColor = UIColor.darkGray.cgColor
        self.resultLabel.textColor = UIColor.white
        self.resultLabel.layer.cornerRadius = 10
        self.resultLabel.layer.borderWidth = 3
        }

    @IBAction func clearButton(_ sender: Any) {
        number1 = 0
        number2 = 0
        result = 0
        resultLabel.text = ""
    }
    @IBAction func oneButton(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "1"
    }
    @IBAction func twoButton(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "2"
    }
    @IBAction func threeButton(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "3"
    }
    @IBAction func fourButton(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "4"
    }
    @IBAction func fiveButton(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "5"
    }
    @IBAction func sixButton(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "6"
    }
    @IBAction func sevenButton(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "7"
    }
    @IBAction func eightButton(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "8"
    }
    @IBAction func nineButton(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "9"
    }
    @IBAction func zeroButton(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "0"
    }
    @IBAction func plusButton(_ sender: Any) {
        number1 = Int(resultLabel.text!)!
        resultLabel.text = ""
    }
    @IBAction func equalButton(_ sender: Any) {
        number2 = Int(resultLabel.text!)!
        result = number1 + number2
        resultLabel.text = String(result)
    }
    
}

