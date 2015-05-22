//
//  DrumMachineModel.swift
//  Drum Machine
//
//  Created by unixAdmin on 5/22/15.
//  Copyright (c) 2015 Enterprise Holdings Inc. All rights reserved.
//

import Foundation

class DrumMachineModel: NSObject {
	// instance vars
//	var delegate: DrumMachineDelegate?

	override init() {
	    super.init()
	} // end self abstraction



	// console log tick
	func padHit(){
		println("HIT!")
		//delegate?.padHit()
	} // end fire tick


} // end metronome model class definition