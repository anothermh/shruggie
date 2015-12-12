//
//  AppDelegate.swift
//  Shruggie
//
//  Created by Mitch Eaton on 12/3/15.
//  Copyright (c) 2015 Mitch Eaton. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    @IBOutlet weak var Shrugged: NSMenu!
    
    @IBAction func addItem(sender: NSMenuItem) {
        let pasteboard = NSPasteboard.generalPasteboard()
        pasteboard.clearContents()
        pasteboard.setString("ಠ_ಠ", forType: NSPasteboardTypeString)
    }
    
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-1)
    
    @IBAction func Shruggie(sender: NSMenuItem) {
        let pasteboard = NSPasteboard.generalPasteboard()
        pasteboard.clearContents()
        pasteboard.setString("¯\\_(ツ)_/¯", forType: NSPasteboardTypeString)

    }
    @IBAction func Table(sender: NSMenuItem) {
        let pasteboard = NSPasteboard.generalPasteboard()
        pasteboard.clearContents()
        pasteboard.setString("(╯°□°）╯︵ ┻━┻", forType: NSPasteboardTypeString)
    }
    @IBOutlet weak var window: NSWindow!

    @IBAction func Exit(sender: NSMenuItem) {
        NSApplication.sharedApplication().terminate(self)
    }

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        let icon = NSImage(named: "shruggieIcon")
        icon!.template = true
        statusItem.image = icon
        statusItem.menu = Shrugged
    }

   

}

