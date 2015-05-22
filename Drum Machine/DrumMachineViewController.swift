//
//  DrumMachineViewController.swift
//  Drum Machine
//
//  Created by unixAdmin on 5/22/15.
//  Copyright (c) 2015 Enterprise Holdings Inc. All rights reserved.
//

import UIKit
import AVFoundation

class DrumMachineViewController:UIViewController, DrumMachineDelegate {

		var drummachine: DrumMachineModel = DrumMachineModel()
		var audioPlayer = AVAudioPlayer()

		required init(coder aDecoder: NSCoder){
			super.init(coder: aDecoder)
		} // end initialize

    // view ready function
    override func viewDidLoad() {
		// drummachine.delegate = self
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("tick",ofType: "mp3")!)
        var error:NSError?
        audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
        audioPlayer.prepareToPlay()

    } // end view ready function



		func padHit() {
			audioPlayer.play()
		} // end pad hit def

    // pad hit actions
    @IBAction func pad001Hit(sender: UIButton) {
        println("Hit Pad 001")
        padHit()
    } // end hit pad001


    @IBAction func pad002Hit(sender: UIButton) {
        println("Hit Pad 002")
        padHit()
    } // end hit pad002


    @IBAction func pad003Hit(sender: UIButton) {
        println("Hit Pad 003")
        padHit()
    } // end hit pad 003


    @IBAction func pad004Hit(sender: UIButton) {
        println("Hit Pad 004")
        padHit()
    } // end hit pad 004


    @IBAction func pad005Hit(sender: UIButton) {
        println("Hit Pad 005")
        padHit()
    } // end hit pad 005


    @IBAction func pad006Hit(sender: UIButton) {
        println("Hit Pad 006")
        padHit()
    } // end hit pad 006




    // console log tick
    func firePad(){
        println("tick")
    //    delegate?.padHit()
    } // end fire tick



} // end class def