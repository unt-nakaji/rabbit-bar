//
//  WindowController.swift
//  rabbit
//
//  Created by iori nakaji on 2020/06/05.
//  Copyright © 2020 iori nakaji. All rights reserved.
//

import Cocoa

fileprivate extension NSTouchBarItem.Identifier {
    static let rabbitID = NSTouchBarItem.Identifier("jp.food.touchbar.rabbit")
}

class WindowController: NSWindowController {
    
    override func windowDidLoad() {
        super.windowDidLoad()
    }
    
    @available(OSX 10.12.2, *)
    override func makeTouchBar() -> NSTouchBar? {
        let mainBar = NSTouchBar()
        mainBar.delegate = self
        mainBar.defaultItemIdentifiers = [.rabbitID]
        
        return mainBar
    }
    
}

@available(OSX 10.12.2, *)
extension WindowController: NSTouchBarDelegate {
    func touchBar(_ touchBar: NSTouchBar, makeItemForIdentifier identifier: NSTouchBarItem.Identifier) -> NSTouchBarItem? {
        
        if identifier == .rabbitID {
            let item = NSCustomTouchBarItem(identifier: identifier)
            item.viewController = RabbitController()
            
            return item
        }
        
        return nil
    }
}
