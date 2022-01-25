//
//  introViewController.swift
//  devpoliyoutube
//
//  Created by Marcus on 24/01/22.
//

import UIKit

final class IntroViewController: UIViewController {
    
    private var customView:IntroView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildView()
        
    }
    
    private func buildView(){
        view = IntroView()
        customView = view as? IntroView
    }
}
