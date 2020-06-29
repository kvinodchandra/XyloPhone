//
//  ViewController.swift
//  Xylophone
//
//  Created by Rishikesh Agrawani on 29/06/20.
//  Copyright © 2020 Vinod Kumar. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // i am new changes
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(sound: sender.currentTitle!)
    }
    
    func playSound(sound: String){
        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

