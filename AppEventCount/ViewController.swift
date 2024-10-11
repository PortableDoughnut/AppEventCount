//
//  ViewController.swift
//  AppEventCount
//
//  Created by Gwen Thelin on 10/11/24.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var didEnterBackgroundLabel: UILabel!
	@IBOutlet weak var willEnterForegroundLabel: UILabel!
	@IBOutlet weak var willResignActiveLabel: UILabel!
	@IBOutlet weak var sceneDidBecomeActiveLabel: UILabel!
	@IBOutlet weak var willConnectToLabel: UILabel!
	@IBOutlet weak var configurationForConnectingLabel: UILabel!
	@IBOutlet weak var didFinishLauncingLabel: UILabel!
	var willConnectToCount: Int = 0
	var didDisconnectCount: Int = 0
	var didBecomeActiveCount: Int = 0
	var willResignActiveCount: Int = 0
	var didEnterBackgroundCount: Int = 0
	var willEnterForegroundCount: Int = 0
	
	var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	func updateView() {
		didFinishLauncingLabel.text = "App launched \(appDelegate.launchCount) times"
		willConnectToLabel.text = "App will connect to \(willConnectToCount) times"
		configurationForConnectingLabel.text = "App configuration for connecting \(appDelegate.configurationForConnectingCount) times"
		sceneDidBecomeActiveLabel.text = "App became active \(didBecomeActiveCount) times"
		willResignActiveLabel.text = "App will resign active \(willResignActiveCount) times"
		didEnterBackgroundLabel.text = "App entered background \(didEnterBackgroundCount) times"
		willEnterForegroundLabel.text = "App will enter foreground \(willEnterForegroundCount) times"
	}
	
}

