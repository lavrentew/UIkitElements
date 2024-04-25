//
//  ViewController.swift
//  UIkitElements
//
//  Created by Николай Лаврентьев on 4/25/24.
//

import UIKit

final class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControl.insertSegment(withTitle: "Third", at: 2 , animated: false)
        setupMainLabel()
    }
    
   

    //MARK: - IBActions
    @IBAction func segmentedControlAction() {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The first segmentSelected"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "The second segmentSelected"
            mainLabel.textColor = .yellow
        default:
            mainLabel.text = "The third segmentSelected"
            mainLabel.textColor = .green
        }
    }
    
    
    //MARK: - Private Methods
    private func setupMainLabel() {
        mainLabel.text = "MainLabel"
        mainLabel.font = .systemFont(ofSize: 35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
    }
}

