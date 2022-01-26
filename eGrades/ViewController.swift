//
//  ViewController.swift
//  eGrades
//
//  Created by Sergiu-Alexandru Stan on 25.01.2022.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    @IBOutlet weak var grade8: UITextField!
    @IBOutlet weak var grade7: UITextField!
    @IBOutlet weak var grade6: UITextField!
    @IBOutlet weak var grade5: UITextField!
    @IBOutlet weak var grade4: UITextField!
    @IBOutlet weak var grade3: UITextField!
    @IBOutlet weak var grade1: UITextField!
    @IBOutlet weak var grade2: UITextField!
    @IBOutlet weak var pc1: UITextField!
    @IBOutlet weak var pc2: UITextField!
    @IBOutlet weak var pc3: UITextField!
    @IBOutlet weak var pc4: UITextField!
    @IBOutlet weak var pc5: UITextField!
    @IBOutlet weak var pc6: UITextField!
    @IBOutlet weak var pc7: UITextField!
    @IBOutlet weak var pc8: UITextField!
    
    @IBAction func g1(_ sender: UITextField) {
        grade1.text = ""
    }
    @IBAction func g1end(_ sender: UITextField) {
        if (grade1.text == ""){
            grade1.text = "Enter your grade"
        }
    }
    
    
    public var gradeList = [Any]()
    var counter = 2
    
    @IBAction func addGrade(_ sender: UIButton) {
        counter += 1
        switch counter {
        case 3:
            grade3.isHidden = false
            pc3.isHidden = false
        case 4:
            grade4.isHidden = false
            pc4.isHidden = false
        case 5:
            grade5.isHidden = false
            pc5.isHidden = false
        case 6:
            grade6.isHidden = false
            pc6.isHidden = false
        case 7:
            grade7.isHidden = false
            pc7.isHidden = false
        case 8:
            grade8.isHidden = false
            pc8.isHidden = false
        default:
            print("Oops! Something went wrong!")
        }
    }
    @IBAction func deleteGrade(_ sender: UIButton) {
        if (counter > 8){
            counter = 8
        }
        switch counter {
        case 3:
            grade3.isHidden = true
            pc3.isHidden = true
            counter -= 1
        case 4:
            grade4.isHidden = true
            pc4.isHidden = true
            counter -= 1
        case 5:
            grade5.isHidden = true
            pc5.isHidden = true
            counter -= 1
        case 6:
            grade6.isHidden = true
            pc6.isHidden = true
            counter -= 1
        case 7:
            grade7.isHidden = true
            pc7.isHidden = true
            counter -= 1
        case 8:
            grade8.isHidden = true
            pc8.isHidden = true
            counter -= 1
        default:
            print("Oops! Something went wrong!")
        }
    }
    @IBOutlet weak var scoreLabel: UILabel!
    @IBAction func calculateAverage(_ sender: Any) {
        var average = 0.00
        // Default case
        if (counter == 2) {
        if let grade1dec = Double(grade1.text!), let grade2dec = Double(grade2.text!) {
            average = (grade1dec + grade2dec) / 2
            scoreLabel.text = "Your average is: " + average.formatted();
            scoreLabel.isHidden = false
        }
        else {
                print("Oops! Something went wrong!")
             }
        }
        if (counter == 4){
            if let grade1dec = Double(grade1.text!), let grade2dec = Double(grade2.text!), let grade3dec = Double(grade3.text!), let grade4dec = Double(grade4.text!) {
                average = (grade1dec + grade2dec + grade3dec + grade4dec) / 4
                scoreLabel.text = "Your average is: " + average.formatted()
                scoreLabel.isHidden = false
            }
        }
        if (counter == 5){
            if let grade1dec = Double(grade1.text!), let grade2dec = Double(grade2.text!), let grade3dec = Double(grade3.text!), let grade4dec = Double(grade4.text!), let grade5dec = Double(grade5.text!) {
                average = (grade1dec + grade2dec + grade3dec + grade4dec + grade5dec) / 5
                scoreLabel.text = "Your average is: " + average.formatted()
                scoreLabel.isHidden = false
            }
        }
        if (counter == 6){
            if let grade1dec = Double(grade1.text!), let grade2dec = Double(grade2.text!), let grade3dec = Double(grade3.text!), let grade4dec = Double(grade4.text!), let grade5dec = Double(grade5.text!), let grade6dec = Double(grade6.text!) {
                average = (grade1dec + grade2dec + grade3dec + grade4dec + grade5dec + grade6dec) / 6
                scoreLabel.text = "Your average is: " + average.formatted()
                scoreLabel.isHidden = false
            }
        }
        if (counter == 7){
            if let grade1dec = Double(grade1.text!), let grade2dec = Double(grade2.text!), let grade3dec = Double(grade3.text!), let grade4dec = Double(grade4.text!), let grade5dec = Double(grade5.text!), let grade6dec = Double(grade6.text!),
                let grade7dec = Double(grade7.text!){
                average = (grade1dec + grade2dec + grade3dec + grade4dec + grade5dec + grade6dec + grade7dec) / 7
                scoreLabel.text = "Your average is: " + average.formatted()
                scoreLabel.isHidden = false
            }
        }
        if (counter == 8){
            if let grade1dec = Double(grade1.text!), let grade2dec = Double(grade2.text!), let grade3dec = Double(grade3.text!), let grade4dec = Double(grade4.text!), let grade5dec = Double(grade5.text!), let grade6dec = Double(grade6.text!),
               let grade7dec = Double(grade7.text!), let grade8dec = Double(grade8.text!) {
                average = (grade1dec + grade2dec + grade3dec + grade4dec + grade5dec + grade6dec + grade7dec + grade8dec) / 8
                scoreLabel.text = "Your average is: " + average.formatted()
                scoreLabel.isHidden = false
            }
        }
        if (counter == 3) {
            if let grade1dec = Double(grade1.text!), let grade2dec = Double(grade2.text!), let grade3dec = Double(grade3.text!) {
                average = (grade1dec + grade2dec + grade3dec) / 3
                scoreLabel.text = "Your average is: " + average.formatted()
                scoreLabel.isHidden = false
        }
    }
}
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        view.addGestureRecognizer(tap)
        // Adding the default grades into the list.
        gradeList.append(grade1)
        gradeList.append(grade2)
        // ------------------------------
        pc3.isHidden = true
        pc4.isHidden = true
        pc5.isHidden = true
        pc6.isHidden = true
        pc7.isHidden = true
        pc8.isHidden = true
        grade1.text = "Enter your grade"
        grade1.clearsOnInsertion = true
        grade2.text = "Enter your grade"
        grade2.clearsOnInsertion = true
        grade3.text = "Enter your grade"
        grade3.clearsOnInsertion = true
        grade3.isHidden = true
        grade4.text = "Enter your grade"
        grade4.clearsOnInsertion = true
        grade4.isHidden = true
        grade5.text = "Enter your grade"
        grade5.clearsOnInsertion = true
        grade5.isHidden = true
        grade6.text = "Enter your grade"
        grade6.clearsOnInsertion = true
        grade6.isHidden = true
        grade7.text = "Enter your grade"
        grade7.clearsOnInsertion = true
        grade7.isHidden = true
        grade8.text = "Enter your grade"
        grade8.clearsOnInsertion = true
        grade8.isHidden = true
        // Do any additional setup after loading the view.
    }
}
