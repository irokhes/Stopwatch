//
//  ViewController.swift
//  timer
//
//  Created by Jorge Reyero on 04/10/2015.
//  Copyright © 2015 irokhes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var time = 0
    var timer = NSTimer()
    
    @IBOutlet weak var labelDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnStartTimer(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("timerElapsed"), userInfo: nil, repeats: true)
        
    }
    
    func timerElapsed(){
        time++
        labelDisplay.text = String(time)
    }

    @IBAction func btnPauseTimer(sender: AnyObject) {
        timer.invalidate()
    }

    @IBAction func btnRestart(sender: AnyObject) {
        timer.invalidate()
        labelDisplay.text = "0"
        time = 0
    }
}

