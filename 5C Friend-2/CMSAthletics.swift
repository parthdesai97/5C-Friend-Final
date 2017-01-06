//
//  CMSAthleticsWebViewController.swift
//  5C Friend-2
//
//  Created by Parth Desai on 1/4/17.
//  Copyright © 2017 Parth Desai. All rights reserved.
//

import UIKit
import WebKit

class CMSAthletics: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        webView = WKWebView()
        container.addSubview(webView)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        self.webView.navigationDelegate = self
        
        let frame = CGRect(x: 0 , y: 0  , width: container.bounds.width, height: container.bounds.height)
        webView.frame = frame
        
        loadRequest(urlString: "http://www.cmsathletics.org/landing/index")
        
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

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
