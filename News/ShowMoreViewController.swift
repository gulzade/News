//
//  ShowMoreViewController.swift
//  News
//
//  Created by Gülzade Karataş on 18.09.2022.
//

import UIKit
import WebKit

class ShowMoreViewController: UIViewController, WKUIDelegate {
    
    var newsLink:String?
    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let link = newsLink {
        let myURL = URL(string: link)
        let myRequest = URLRequest(url: myURL! as URL)
        webView.load(myRequest)
        }
    }
    override func loadView() {
          let webConfiguration = WKWebViewConfiguration()
          webView = WKWebView(frame: .zero, configuration: webConfiguration)
          webView.uiDelegate = self
          view = webView
        
       }
    
}
