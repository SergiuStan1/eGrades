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
    
    @IBAction func p1(_ sender: UITextField) {
        pc1.text = ""
    }
    @IBAction func p1end(_ sender: UITextField) {
        if (pc1.text == ""){
            pc1.text = "0%"
        }
        else {
            pc1.text = pc1.text! + "%"
        }
    }
    @IBAction func p2(_ sender: UITextField) {
        pc2.text = ""
    }
    @IBAction func p2end(_ sender: UITextField) {
        if (pc2.text == ""){
            pc2.text = "0%"
        }
        else {
            pc2.text = pc2.text! + "%"
        }
    }
    @IBAction func p3(_ sender: UITextField) {
        pc3.text = ""
    }
    @IBAction func p3end(_ sender: UITextField) {
        if (pc3.text == ""){
            pc3.text = "0%"
        }
        else {
            pc3.text = pc3.text! + "%"
        }
    }
    @IBAction func p4(_ sender: UITextField) {
        pc4.text = ""
    }
    @IBAction func p4end(_ sender: UITextField) {
        if (pc4.text == ""){
            pc4.text = "0%"
        }
        else {
            pc4.text = pc4.text! + "%"
        }
    }
    @IBAction func p5(_ sender: UITextField) {
        pc5.text = ""
    }
    @IBAction func p5end(_ sender: UITextField) {
        if (pc5.text == ""){
            pc5.text = "0%"
        }
        else {
            pc5.text = pc5.text! + "%"
        }
    }
    @IBAction func p6(_ sender: UITextField) {
        pc6.text = ""
    }
    @IBAction func p6end(_ sender: UITextField) {
        if (pc6.text == ""){
            pc6.text = "0%"
        }
        else {
            pc6.text = pc6.text! + "%"
        }
    }
    @IBAction func p7(_ sender: UITextField) {
        pc7.text = ""
    }
    @IBAction func p7end(_ sender: UITextField) {
        if (pc7.text == ""){
            pc7.text = "0%"
        }
        else {
            pc7.text = pc7.text! + "%"
        }
    }
    @IBAction func p8(_ sender: UITextField) {
        pc8.text = ""
    }
    @IBAction func p8end(_ sender: UITextField) {
        if (pc8.text == ""){
            pc8.text = "0%"
        }
        else {
            pc8.text = pc8.text! + "%"
        }
    }
    @IBAction func g1(_ sender: UITextField) {
        grade1.text = ""
    }
    @IBAction func g1end(_ sender: UITextField) {
        if (grade1.text == ""){
            grade1.text = "Enter your grade"
        }
    }
    @IBAction func g2(_ sender: UITextField) {
        grade2.text = ""
    }
    @IBAction func g2end(_ sender: UITextField) {
        if (grade2.text == ""){
            grade2.text = "Enter your grade"
        }
    }
    @IBAction func g3(_ sender: UITextField) {
        grade3.text = ""
    }
    @IBAction func g3end(_ sender: UITextField) {
        if (grade3.text == ""){
            grade3.text = "Enter your grade"
        }
    }
    @IBAction func g8(_ sender: UITextField) {
        grade8.text = ""
    }
    @IBAction func g8end(_ sender: UITextField) {
        if (grade8.text == ""){
            grade8.text = "Enter your grade"
        }
    }
    @IBAction func g7(_ sender: UITextField) {
        grade7.text = ""
    }
    @IBAction func g7end(_ sender: UITextField) {
        if (grade7.text == ""){
            grade7.text = "Enter your grade"
        }
    }
    @IBAction func g4(_ sender: UITextField) {
        grade4.text = ""
    }
    @IBAction func g4end(_ sender: UITextField) {
        if (grade4.text == ""){
            grade4.text = "Enter your grade"
        }
    }
    @IBAction func g5(_ sender: UITextField) {
        grade5.text = ""
    }
    @IBAction func g5end(_ sender: UITextField) {
        if (grade5.text == ""){
            grade5.text = "Enter your grade"
        }
    }
    @IBAction func g6(_ sender: UITextField) {
        grade6.text = ""
    }
    
    @IBAction func g6end(_ sender: UITextField) {
        if (grade6.text == ""){
            grade6.text = "Enter your grade"
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
    // Functions that calculates weighted averages
    func weightedAverage(values: [Double], weights: [Double]) -> Double {
        precondition(values.count > 0 && values.count == weights.count)

        let totalWeight = weights.reduce(0.0, +)
        precondition(totalWeight > 0)

        return zip(values, weights)
                .map { $0 * $1 }
                .reduce(0.0, +) / totalWeight
    }
    @IBAction func calculateAverage(_ sender: Any) {
        var average = 0.00
        // Default case
        if (counter == 2) {
            if let grade1dec = Double(grade1.text!), let grade2dec = Double(grade2.text!),
               let pc1int = Double(pc1.text!) , let pc2int = Double(pc2.text!){
            average = weightedAverage(values: [grade1dec, grade2dec], weights: [pc1int, pc2int])
            scoreLabel.text = "Your average is: " + average.formatted();
            scoreLabel.isHidden = false
        }
        else {
                print("Oops! Something went wrong!")
             }
        }
        if (counter == 4){
            if let grade1dec = Double(grade1.text!), let grade2dec = Double(grade2.text!), let grade3dec = Double(grade3.text!), let grade4dec = Double(grade4.text!), let pc1int = Double(pc1.text!) , let pc2int = Double(pc2.text!), let pc3int = Double(pc3.text!), let pc4int = Double(pc4.text!) {
                average = weightedAverage(values: [grade1dec, grade2dec, grade3dec, grade4dec],
                                          weights: [pc1int, pc2int, pc3int, pc4int])
                scoreLabel.text = "Your average is: " + average.formatted()
                scoreLabel.isHidden = false
            }
        }
        if (counter == 5){
            if let grade1dec = Double(grade1.text!), let grade2dec = Double(grade2.text!), let grade3dec = Double(grade3.text!), let grade4dec = Double(grade4.text!), let grade5dec = Double(grade5.text!), let pc1int = Double(pc1.text!) , let pc2int = Double(pc2.text!), let pc3int = Double(pc3.text!), let pc4int = Double(pc4.text!), let pc5int = Double(pc5.text!) {
                average = weightedAverage(values: [grade1dec, grade2dec, grade3dec, grade4dec, grade5dec],
                                          weights: [pc1int, pc2int, pc3int, pc4int, pc5int])
                scoreLabel.text = "Your average is: " + average.formatted()
                scoreLabel.isHidden = false
            }
        }
        if (counter == 6){
            if let grade1dec = Double(grade1.text!), let grade2dec = Double(grade2.text!), let grade3dec = Double(grade3.text!), let grade4dec = Double(grade4.text!), let grade5dec = Double(grade5.text!), let grade6dec = Double(grade6.text!),
                let pc1int = Double(pc1.text!) , let pc2int = Double(pc2.text!), let pc3int = Double(pc3.text!), let pc4int = Double(pc4.text!), let pc5int = Double(pc5.text!), let pc6int = Double(pc6.text!){
                average = weightedAverage(values: [grade1dec, grade2dec, grade3dec, grade4dec, grade5dec, grade6dec],
                                          weights: [pc1int, pc2int, pc3int, pc4int, pc5int, pc6int])
                scoreLabel.text = "Your average is: " + average.formatted()
                scoreLabel.isHidden = false
            }
        }
        if (counter == 7){
            if let grade1dec = Double(grade1.text!), let grade2dec = Double(grade2.text!), let grade3dec = Double(grade3.text!), let grade4dec = Double(grade4.text!), let grade5dec = Double(grade5.text!), let grade6dec = Double(grade6.text!),
                let grade7dec = Double(grade7.text!), let pc1int = Double(pc1.text!) , let pc2int = Double(pc2.text!), let pc3int = Double(pc3.text!), let pc4int = Double(pc4.text!), let pc5int = Double(pc5.text!), let pc6int = Double(pc6.text!), let pc7int = Double(pc7.text!){
                average = weightedAverage(values: [grade1dec, grade2dec, grade3dec, grade4dec, grade5dec, grade6dec, grade7dec],
                                          weights: [pc1int, pc2int, pc3int, pc4int, pc5int, pc6int, pc7int])
                scoreLabel.text = "Your average is: " + average.formatted()
                scoreLabel.isHidden = false
            }
        }
        if (counter == 8){
            if let grade1dec = Double(grade1.text!), let grade2dec = Double(grade2.text!), let grade3dec = Double(grade3.text!), let grade4dec = Double(grade4.text!), let grade5dec = Double(grade5.text!), let grade6dec = Double(grade6.text!),
                let grade7dec = Double(grade7.text!), let grade8dec = Double(grade8.text!), let pc1int = Double(pc1.text!) , let pc2int = Double(pc2.text!), let pc3int = Double(pc3.text!), let pc4int = Double(pc4.text!), let pc5int = Double(pc5.text!), let pc6int = Double(pc6.text!), let pc7int = Double(pc7.text!), let pc8int = Double(pc8.text!) {
                average = weightedAverage(values: [grade1dec, grade2dec, grade3dec, grade4dec, grade5dec, grade6dec, grade7dec,                                   grade8dec],
                                          weights: [pc1int, pc2int, pc3int, pc4int, pc5int, pc6int, pc7int, pc8int])
                scoreLabel.text = "Your average is: " + average.formatted()
                scoreLabel.isHidden = false
            }
        }
        if (counter == 3) {
            if let grade1dec = Double(grade1.text!), let grade2dec = Double(grade2.text!), let grade3dec = Double(grade3.text!),
               let pc1int = Double(pc1.text!) , let pc2int = Double(pc2.text!), let pc3int = Double(pc3.text!){
                average = weightedAverage(values: [grade1dec, grade2dec, grade3dec],
                                          weights: [pc1int, pc2int, pc3int])
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
