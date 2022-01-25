//
//  ViewController.swift
//  eGrades
//
//  Created by Sergiu-Alexandru Stan on 25.01.2022.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    @State private var counter = 2
    @IBOutlet weak var grade1: UITextField!
    @IBOutlet weak var grade2: UITextField!
    @IBAction func addGrade(_ sender: UIButton) {
        
    }
    @IBAction func deleteGrade(_ sender: UIButton) {
        
    }
    @IBAction func calculateAverage(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        grade1.text = "Enter you grade"
        grade1.clearsOnInsertion = true
        grade2.text = "Enter your grade"
        grade2.clearsOnInsertion = true
        // Do any additional setup after loading the view.
    }


}

