//
//  ViewController.swift
//  Vostrikov_HW2.1.2
//
//  Created by Александр Востриков on 24/07/2019.
//  Copyright © 2019 Александр Востриков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startNextButton: UIButton!
    private var start = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.backgroundColor = .red
        redView.alpha = 0.3
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.backgroundColor = .yellow
        yellowView.alpha = 0.3
        yellowView.layer.cornerRadius = redView.frame.width / 2
        greenView.backgroundColor = .green
        greenView.alpha = 0.3
        greenView.layer.cornerRadius = redView.frame.width / 2
        startNextButton.setTitle("Start", for: .normal)
        startNextButton.layer.cornerRadius = 15
        
    }

    @IBAction func startNextButtonPresed(_ sender: UIButton) {
        
        if startNextButton.currentTitle != "Start" {
            switch  start {
                case 1:
                    updateColor(trafficLightsColor: yellowView)
                    start += 1
                case 2 :
                    updateColor(trafficLightsColor: greenView)
                    start += 1
                case 3 :
                    updateColor(trafficLightsColor: redView)
                    start = 1
            default:
                break
            }
        } else {
            startNextButton.setTitle("Next", for: .normal)
            redView.alpha = 1
            start = 1
        }
    }
    private func updateColor(trafficLightsColor: UIView){
        switch trafficLightsColor {
            case redView:
                greenView.alpha = 0.3
                redView.alpha = 1
            case yellowView:
                redView.alpha = 0.3
                yellowView.alpha = 1
            case greenView:
                yellowView.alpha = 0.3
                greenView.alpha = 1
            default:
                break
        }
    }
    
}

