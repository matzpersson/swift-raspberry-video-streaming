//
//  ViewController.swift
//  swift_simple_video_client
//
//  Created by Matz Persson on 13/09/2016.
//  Copyright © 2016 Headstation. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // -- About setting up the Raspberry on http://headstation.com/archives/streaming-video-using-pi-camera/
        // -- Set ipaddress and port of your remote Raspberry http stream.
        
        let stream_uri = "http://172.16.1.52:8081"
        
        // -- Delegate and Load
        webView.delegate = self
        webView.loadRequest(NSURLRequest(URL: NSURL(string: stream_uri )!))
        
        
    }




}

