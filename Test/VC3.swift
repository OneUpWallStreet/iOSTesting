////
////  ViewController.swift
////  Test
////
////  Created by Arteezy on 12/6/21.
////
//
//import UIKit
//
//
//class VC3: UIViewController {
//    
//    let customView = CustomUIView()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        customView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(customView)
//        
//        title = "Hello"
//        customView.backgroundColor = .red
//        
//        NSLayoutConstraint.activate([
//            customView.widthAnchor.constraint(equalToConstant: 100),
//            customView.heightAnchor.constraint(equalToConstant: 100),
////            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
////            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
//            customView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            customView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//        ])
//        
//        
//        view.backgroundColor = .white
//        
//    }
//}
//
//
//class CustomUIView: UIView {
//    
//    let lab1: UILabel = {
//        let lab1 = UILabel()
//        lab1.text = "Lab1"
//        lab1.textColor = .black
//        lab1.translatesAutoresizingMaskIntoConstraints = false
//        return lab1
//    }()
//    
//    let lab2: UILabel = {
//        let lab2 = UILabel()
//        lab2.text = "Lab2"
//        lab2.textColor = .black
//        lab2.translatesAutoresizingMaskIntoConstraints = false
//        return lab2
//    }()
//    
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        
//        addSubview(lab1)
//        addSubview(lab2)
//        
//        NSLayoutConstraint.activate([
//            lab1.leadingAnchor.constraint(equalTo: leadingAnchor),
//            lab1.topAnchor.constraint(equalTo: topAnchor)
//        ])
//        
//        NSLayoutConstraint.activate([
//            lab2.leadingAnchor.constraint(equalTo: lab1.trailingAnchor,constant: 5),
//            lab2.topAnchor.constraint(equalTo: topAnchor)
//        ])
//        
//    }
//    
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//}
