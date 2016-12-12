//
//  ViewController.swift
//  ttsiOS
//
//  Created by Alexander Beaver on 12/11/16.
//  Copyright © 2016 Alexander Beaver. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    func speak(toSpeak:String){
        let synth = AVSpeechSynthesizer()
        
        let utterance = AVSpeechUtterance(string: toSpeak)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-AU")
        utterance.rate = 0.5
        synth.speak(utterance)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onPush(_ sender: Any) {
        speak(toSpeak: textField.text!)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

