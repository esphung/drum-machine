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
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    } // end initialize
    
    
		var drummachine: DrumMachineModel = DrumMachineModel()
		var audioPlayer001 = AVAudioPlayer()
        var audioPlayer002 = AVAudioPlayer()
        var audioPlayer003 = AVAudioPlayer()
        var audioPlayer004 = AVAudioPlayer()
        var audioPlayer005 = AVAudioPlayer()
        var audioPlayer006 = AVAudioPlayer()



    // view ready function
    override func viewDidLoad() {
        // kick
        var sound001 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Bassdrum-01",ofType: "wav")!)
        // hat
        var sound002 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("hatclosed",ofType: "wav")!)
        // clap
        var sound003 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Clap",ofType: "wav")!)
        // open hat
        var sound004 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Hat Open",ofType: "wav")!)
        // snare
        var sound005 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Snaredrum",ofType: "wav")!)
        // 808 bass
        var sound006 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Bassdrum-05",ofType: "wav")!)
        
        // error
        var error:NSError?
        
        
        // audio players
        audioPlayer001 = AVAudioPlayer(contentsOfURL: sound001, error: &error)
        audioPlayer002 = AVAudioPlayer(contentsOfURL: sound002, error: &error)
        audioPlayer003 = AVAudioPlayer(contentsOfURL: sound003, error: &error)
        audioPlayer004 = AVAudioPlayer(contentsOfURL: sound004, error: &error)
        audioPlayer005 = AVAudioPlayer(contentsOfURL: sound005, error: &error)
        audioPlayer006 = AVAudioPlayer(contentsOfURL: sound006, error: &error)
        
        // prepare to play
        audioPlayer001.prepareToPlay()
        audioPlayer002.prepareToPlay()
        audioPlayer003.prepareToPlay()
        audioPlayer004.prepareToPlay()
        audioPlayer005.prepareToPlay()
        audioPlayer006.prepareToPlay()


    } // end view ready function


    // pad sound functions
    func padHit001() {
        audioPlayer001.play()
    } // end pad hit def
    
    func padHit002(){
        audioPlayer002.play()
    } // end pad sound 002
    func padHit003(){
        audioPlayer003.play()
    } // end sound 003
    func padHit004(){
        audioPlayer004.play()
    }
    func padHit005(){
        audioPlayer005.play()
    }
    func padHit006(){
        audioPlayer006.play()
    } // end sound 006

    // pad hit actions
    @IBAction func pad001Hit(sender: UIButton) {
        println("Hit Pad 001")
        padHit001()
    } // end hit pad001


    @IBAction func pad002Hit(sender: UIButton) {
        println("Hit Pad 002")
        padHit002()
    } // end hit pad002


    @IBAction func pad003Hit(sender: UIButton) {
        println("Hit Pad 003")
        padHit003()
    } // end hit pad 003


    @IBAction func pad004Hit(sender: UIButton) {
        println("Hit Pad 004")
        padHit004()
    } // end hit pad 004


    @IBAction func pad005Hit(sender: UIButton) {
        println("Hit Pad 005")
        padHit005()
    } // end hit pad 005


    @IBAction func pad006Hit(sender: UIButton) {
        println("Hit Pad 006")
        padHit006()
    } // end hit pad 006







} // end class def