//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Егор Оглоблин on 12.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
//    @IBOutlet weak var resultButton: UIButton!
    
    private var numberDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // resultButton.layer.cornerRadius = 12
    }

    @IBAction func resultButtonTapped() {
        infoLabel.text = "Ты не бегал уже \(numberDays)"
    }
    
    @IBAction func datePicked(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
}

