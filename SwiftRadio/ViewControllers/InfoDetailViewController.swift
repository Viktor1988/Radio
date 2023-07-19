//
//  InfoDetailViewController.swift
//  Swift Radio
//
//  Created by Matthew Fecher on 7/9/15.
//  Copyright (c) 2015 MatthewFecher.com. All rights reserved.
//

import UIKit

class InfoDetailViewController: UIViewController {
    
    @IBOutlet weak var stationImageView: UIImageView!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationDescLabel: UILabel!
    @IBOutlet weak var stationLongDescTextView: UITextView!
    @IBOutlet weak var okayButton: UIButton!
    
    var currentStation: RadioStation!

    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupStationText()
        setupStationLogo()
    }
    
    // MARK: - UI Helpers
    
    func setupStationText() {
        
        // Display Station Name & Short Desc
        stationNameLabel.text = currentStation.name
        stationNameLabel.accessibilityIdentifier = Accessibility.InfoDetailViewController.stationNameLabel.rawValue
        stationDescLabel.text = currentStation.desc
        stationDescLabel.accessibilityIdentifier = Accessibility.InfoDetailViewController.stationDescLabel.rawValue
        print("stationDescLabel.accessibilityIdentifier: + \(String(describing: stationDescLabel.accessibilityIdentifier))")
        
        // Display Station Long Desc
        if currentStation.longDesc == "" {
            loadDefaultText()
        } else {
            stationLongDescTextView.text = currentStation.longDesc
        }
        self.okayButton.accessibilityIdentifier = Accessibility.InfoDetailViewController.okayButton.rawValue
    }
    
    func loadDefaultText() {
        // Add your own default ext
        stationLongDescTextView.text = "You are listening to Swift Radio. This is a sweet open source project. Tell your friends, swiftly!"
    }
    
    func setupStationLogo() {
        
        // Display Station Image/Logo
        currentStation.getImage { [weak self] image in
            self?.stationImageView.image = image
            self?.stationImageView.accessibilityIdentifier = Accessibility.InfoDetailViewController.imageViewLogoRadio.rawValue
        }
        
        // Apply shadow to Station Image
        stationImageView.applyShadow()
    }
    
    // MARK: - IBActions
    
    @IBAction func okayButtonPressed(_ sender: UIButton) {
        let test = Test()
        _ = navigationController?.popToViewController(test, animated: true)
//        _ = navigationController?.popViewController(animated: true)
    }
    
}
