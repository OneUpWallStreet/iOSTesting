////
////  ViewController.swift
////  Test
////
////  Created by Arteezy on 2/14/22.
////
//
//import UIKit
//import SwiftUI
//
//class VC9: UIViewController {
//
//    let swiftUIView = UIHostingController(rootView: GameOverMenu())
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        addChild(swiftUIView)
//        swiftUIView.view.frame = CGRect(x: 40, y: -300, width: self.view.frame.size.width-30, height: 500)
//        swiftUIView.view.translatesAutoresizingMaskIntoConstraints = false
//        
//        view.addSubview(swiftUIView.view)
//        
//        NSLayoutConstraint.activate([
//            swiftUIView.view.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            swiftUIView.view.centerYAnchor.constraint(equalTo: view.centerYAnchor)
////            swiftUIView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
////            swiftUIView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
////            swiftUIView.view.topAnchor.constraint(equalTo: view.topAnchor),
////            swiftUIView.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
//        ])
//        
//        NotificationCenter.default.addObserver(self, selector: #selector(screamCoinsDidChange), name: .coinsDidChange, object: nil)
//        
//        // Do any additional setup after loading the view.
//    }
//    
//    @objc func screamCoinsDidChange() {
//        print("Content View")
//    }
//    
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//}
