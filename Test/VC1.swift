////
////  VC1.swift
////  Test
////
////  Created by Arteezy on 12/8/21.
////
//
//import Foundation
//import UIKit
//
//class ViewController1: UIViewController,CustomButtonViewDelegate {
//    
//    func doSomething() {
//        print("Okay")
//    }
//    
//    private let OkayButton = CustomButtonView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        OkayButton.delegate = self
//        view.backgroundColor = .white
//
//        view.addSubview(OkayButton)
//        
//    }
//    
//
//    override func viewDidLayoutSubviews() {
//        OkayButton.frame = CGRect(x: 10, y: view.safeAreaInsets.top, width: 250, height: 50)
//    }
//}
//
//protocol CustomButtonViewDelegate: AnyObject {
//    func doSomething()
//}
//
//
//class CustomButtonView: UIView {
//    
//    let button: UIButton = {
//        let button: UIButton = UIButton()
//        button.setTitle("Texttt", for: .normal)
//        button.backgroundColor = .systemGreen
//        button.setTitleColor(UIColor.red, for: .normal)
//        return button
//    }()
//    
//    var delegate: CustomButtonViewDelegate?
//  
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        addSubview(button)
//        button.addTarget(self, action: #selector(okay), for: .touchUpInside)
//    }
//    
//    @objc func okay() {
//        print("Donkey 12 3")
//        delegate?.doSomething()
//    }
//    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        button.frame = CGRect(x: 0, y: 0, width: 250, height: 50)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
//
