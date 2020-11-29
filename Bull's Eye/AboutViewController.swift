//
//  AboutViewController.swift
//  Bull's Eye
//
//  Created by Марго on 2/7/19.
//  Copyright © 2019 MargoLabs. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = Bundle.main.url(forResource: "BullsEye",
                                     withExtension: "html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
