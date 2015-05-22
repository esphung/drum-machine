//
//  MetronomeViewController.swift
//  Drum Machine
//
//  Created by Nicholas Kraftor on 12/6/14.
//  Edited by Eric Scott Phung (2015.05.21)
//  Copyright (c) 2014 Enterprise Holdings Inc. All rights reserved.
//

import UIKit
import AVFoundation


class MetronomeViewController: UIViewController, MetronomeDelegate {


    // instance vars
		var metronome: MetronomeModel = MetronomeModel()
		var audioPlayer = AVAudioPlayer()
		@IBOutlet weak var metroBoolLblTxt: UILabel!
		@IBOutlet weak var metroBoolSwitch: UISegmentedControl!
		required init(coder aDecoder: NSCoder){
			super.init(coder: aDecoder)
		} // end initialize

    // view ready function
    override func viewDidLoad() {
        metronome.delegate = self
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("pop",ofType: "aiff")!)
        var error:NSError?
        audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
        audioPlayer.prepareToPlay()

    } // end view ready function

    func metronomeTick() {
        //println("test in controller")
        audioPlayer.play()

    } // end metronome output audio




    @IBAction func metroSwitchAction(sender: UISegmentedControl) {
        switch metroBoolSwitch.selectedSegmentIndex{
        case 0:
            metroBoolLblTxt.text = "Off";
            self.metronome.stopMetronome()
        case 1:
            metroBoolLblTxt.text = "On";
            self.metronome.startMetronome()
        default:
            break;
        } // end case switch metronome
    }// end metro switch action







} // end metronome vc class def
