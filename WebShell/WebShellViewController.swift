//
//  ViewController.swift
//  WebShell
//
//  Created by Randy on 15/12/19.
//  Copyright © 2015 RandyLu. All rights reserved.
//
//  Wesley de Groot (@wdg), Added Notification and console.log Support

import Cocoa
import WebKit
import Foundation
import AppKit
import AudioToolbox
import IOKit.ps
import Darwin
import CoreLocation

// @wdg Clean up code base
// Issue: #43
class ViewController: NSViewController, WebFrameLoadDelegate, WebUIDelegate, WebResourceLoadDelegate, WebPolicyDelegate, CLLocationManagerDelegate, WebDownloadDelegate, NSURLDownloadDelegate {

	@IBOutlet var mainWindow: NSView!
	@IBOutlet weak var mainWebview: WebView!
	@IBOutlet weak var launchingLabel: NSTextField!
	@IBOutlet weak var progressBar: NSProgressIndicator!
	var firstLoadingStarted = false
	var firstAppear = true
	var notificationCount = 0
    var lastURL:NSURL = NSURL.init()
    var IElement: NSMenuItem = NSMenuItem.init()
	let locationManager = CLLocationManager()
    var MustCloseWindow = true
}
