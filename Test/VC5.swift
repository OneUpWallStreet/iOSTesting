////
////  ViewController.swift
////  Test
////
////  Created by Arteezy on 1/18/22.
////
//
//import UIKit
//
//
//
//protocol MyCustomDelegate {
//    func doSomething()
//}
//
//class CustomTestView: UIView {
//    
//    var someButton: UIButton = {
//        let someButton = UIButton()
//        someButton.translatesAutoresizingMaskIntoConstraints = false
//        someButton.setTitle("SDOASDA", for: .normal)
//        someButton.setTitleColor(.blue, for: .normal)
////        someButton.backgroundColor = .green
//        someButton.addTarget(self, action: #selector(dog), for: .allTouchEvents)
//        return someButton
//    }()
//    
//    var delegate: MyCustomDelegate?
//    
//    @objc func dog() {
//        delegate?.doSomething()
//        
//        print("Some")
//    }
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        
//        addSubview(someButton)
//        
//        NSLayoutConstraint.activate([
//            someButton.centerXAnchor.constraint(equalTo: centerXAnchor),
//            someButton.centerYAnchor.constraint(equalTo: centerYAnchor),
////            someButton.widthAnchor.constraint(equalToConstant: 250),
////            someButton.heightAnchor.constraint(equalToConstant: 250)
//        ])
//        
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//}
//
//
//
//class VC5: UIViewController, MyCustomDelegate {
//    
//    
//    func doSomething() {
//        print("Ffs just work")
//    }
//    let someView: CustomTestView =  CustomTestView()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        
//        someView.delegate = self
//        print("Hello World")
//        view.backgroundColor = .white
//        someView.backgroundColor = .brown
//        view.addSubview(someView)
//        
//        someView.translatesAutoresizingMaskIntoConstraints = false
//        
//        NSLayoutConstraint.activate([
//            someView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            someView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//        ])
//        
//        
////        someButton.translatesAutoresizingMaskIntoConstraints = false
//        
//
//        
//        // Do any additional setup after loading the view.
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
//
//}
