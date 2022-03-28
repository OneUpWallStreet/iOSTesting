//
//  ViewController.swift
//  Test
//
//  Created by Arteezy on 3/3/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    
    let gridTestSwiftUIView = UIHostingController(rootView: GridTest())
 

    override func viewDidLoad() {
        super.viewDidLoad()
        addChild(gridTestSwiftUIView)
        gridTestSwiftUIView.view.frame = view.frame
        gridTestSwiftUIView.view.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(gridTestSwiftUIView.view)
        
        NSLayoutConstraint.activate([
            gridTestSwiftUIView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            gridTestSwiftUIView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            gridTestSwiftUIView.view.topAnchor.constraint(equalTo: view.topAnchor),
            gridTestSwiftUIView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        view.backgroundColor = .yellow
        // Do any additional setup after loading the view.
    }


}

