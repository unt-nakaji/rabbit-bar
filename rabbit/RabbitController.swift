//
//  RabbitController.swift
//  rabbit
//
//  Created by iori nakaji on 2020/06/05.
//  Copyright © 2020 iori nakaji. All rights reserved.
//

import Cocoa

class RabbitController: NSViewController {
    
    override func loadView() {
        super.viewDidLoad()
        
        self.view = NSView()
    }
    
    override func viewDidAppear() {
        
        let rabbitView = NSView()
        
        rabbitView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width + 80, height: self.view.frame.height)
        rabbitView.layer?.position = CGPoint(x: 0, y: 0)
        
        self.view.addSubview(rabbitView)

        for i in 0...10 {
            let rabbit = NSTextView(frame: NSRect(x: i * 80, y: -2, width: 30, height: 30))
            rabbit.string = "🐇"
            rabbit.drawsBackground = false
            rabbit.font = NSFont.systemFont(ofSize: 20)
            
            rabbitView.addSubview(rabbit)
        }
        
        
    }
    
}
