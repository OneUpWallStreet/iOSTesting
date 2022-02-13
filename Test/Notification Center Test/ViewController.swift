//
//  ViewController.swift
//  Test
//
//  Created by Arteezy on 2/13/22.
//

import UIKit
import SwiftUI

protocol SwiftUIDelegate {
    func someRandomAction()
}

extension ViewController: SwiftUIDelegate {
    
    func someRandomAction() {
        print("Congrats!, you win now claim the coins")
    }
    
    
}

class ViewController: UIViewController {
    
    
    let swiftUIView = UIHostingController(rootView: ContentView())

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChild(swiftUIView)
        swiftUIView.rootView.delegate = self
        swiftUIView.view.frame = view.frame
        swiftUIView.view.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(swiftUIView.view)
        
        NSLayoutConstraint.activate([
            swiftUIView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            swiftUIView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            swiftUIView.view.topAnchor.constraint(equalTo: view.topAnchor),
            swiftUIView.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        NotificationCenter.default.addObserver(self, selector: #selector(screamCoinsDidChange), name: .coinsDidChange, object: nil)
        
        // Do any additional setup after loading the view.
    }
    
    @objc func screamCoinsDidChange() {
        swiftUIView.rootView.delegate?.someRandomAction()
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
