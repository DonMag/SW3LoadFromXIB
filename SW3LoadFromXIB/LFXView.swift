//
//  LFXView.swift
//  SW3LoadFromXIB
//
//  Created by Don Mag on 1/18/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class LFXView: UIView {

	@IBOutlet weak var theLabel: UILabel!
	
	
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

	@IBOutlet weak var view : UIView!
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		xibSetup()
	}
	
	public required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		xibSetup()
	}
	
	private func xibSetup() {
		view = loadViewFromXib()
		view.frame = bounds
		view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		addSubview(view)
		sendSubview(toBack: view)
	}
	
	private func loadViewFromXib() -> UIView {
		let nib = UINib(nibName: String(describing: type(of: self)), bundle: Bundle(for: type(of: self)))
		if let cView = nib.instantiate(withOwner: self, options: nil).first as? UIView {
			return cView
		}
		else {
			print("Unable to load custom view!")
			return UIView()
		}
	}
	
	public func lfxSetLabelText(theString: String) -> Void {
		self.theLabel.text = theString
	}
}
