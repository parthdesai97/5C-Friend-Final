//
//  cmcViewController.swift
//  5C Friend-2
//
//  Created by Parth Desai on 1/8/17.
//  Copyright © 2017 Parth Desai. All rights reserved.
//

import UIKit
import WebKit

class cmcViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var cmcContainer: UIView!
    
    var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationItem.title = "Collins"
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barStyle = UIBarStyle.blackOpaque
        
        webView = WKWebView()
        
        cmcContainer.addSubview(webView)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        self.webView.navigationDelegate = self
        
        let frame = CGRect(x: 0 , y: 0  , width: cmcContainer.bounds.width, height: cmcContainer.bounds.height)
        webView.frame = frame
        
        loadRequest(urlString: "https://aspc.pomona.edu/menu/#cmc_menu")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadRequest(urlString: String) {
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
}
