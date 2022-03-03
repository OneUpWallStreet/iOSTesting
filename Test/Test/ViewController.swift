//
//  ViewController.swift
//  Test
//
//  Created by Arteezy on 3/3/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    
    let progressTestSwiftUIView = UIHostingController(rootView: ProgressTest())
 

    override func viewDidLoad() {
        super.viewDidLoad()
        addChild(progressTestSwiftUIView)
        progressTestSwiftUIView.view.frame = view.frame
        progressTestSwiftUIView.view.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(progressTestSwiftUIView.view)
        
        NSLayoutConstraint.activate([
            progressTestSwiftUIView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            progressTestSwiftUIView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            progressTestSwiftUIView.view.topAnchor.constraint(equalTo: view.topAnchor),
            progressTestSwiftUIView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        view.backgroundColor = .yellow
        // Do any additional setup after loading the view.
    }


}

