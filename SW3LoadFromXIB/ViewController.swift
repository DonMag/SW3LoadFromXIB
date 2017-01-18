//
//  ViewController.swift
//  SW3LoadFromXIB
//
//  Created by Don Mag on 1/18/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	@IBAction func btnTapped(_ sender: Any) {
		print("tapped")
		
		let lfxV = LFXView(frame: CGRect(x: 40, y: 200, width: 200, height: 150))
		
		lfxV.lfxSetLabelText(theString: "Hello LFX")
		lfxV.theLabel.textColor = UIColor.orange
		
		self.view.addSubview(lfxV)
		
	}
	
}

