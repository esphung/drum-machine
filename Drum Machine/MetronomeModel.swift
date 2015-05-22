//
//  MetronomeModel.swift
//  Drum Machine
//
//  Created by Nicholas Kraftor on 12/6/14.
//  Edited by Eric Scott Phung (2015.05.21)
//  Copyright (c) 2014 Enterprise Holdings Inc. All rights reserved.
//

import Foundation

class MetronomeModel: NSObject {
	// instance vars
	var delegate: MetronomeDelegate?
	var timer: NSTimer;

	override init() {
	    self.timer = NSTimer();
	    super.init()
	} // end self abstraction

	// start metronome
	func startMetronome() -> Bool{
		// int is seconds in interval
		// default bpm is 60 (@ 1)
		self.timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("fireTick"), userInfo: nil, repeats: true)
		println("Metronome Started")
		return true;
	} // end start metronome

	// stop metronome
	func stopMetronome() -> Bool {
		self.timer.invalidate()
		println("Metronome Stopped")
		return false;
	} // end stop metronome

	// console log tick
	func fireTick(){
		println("tick")
		delegate?.metronomeTick()
	} // end fire tick


} // end metronome model class definition
