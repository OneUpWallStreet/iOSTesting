////
////  ViewController.swift
////  Test
////
////  Created by Arteezy on 2/12/22.
////
//
//import UIKit
//
//class VC8: UIViewController {
//    
//    let label1: UILabel = {
//        let label1 = UILabel()
//        label1.text = "Amazon Web Services"
//        label1.translatesAutoresizingMaskIntoConstraints = false
//        return label1
//    }()
//    
//    let secondLabel: UILabel = {
//        let secondLabel = UILabel()
//        secondLabel.text = "Azure Cloud"
//        secondLabel.translatesAutoresizingMaskIntoConstraints = false
//        return secondLabel
//    }()
//    
//    private func initialConfigrationLabel1() {
//        
//        view.addSubview(label1)
//        
//        NSLayoutConstraint.activate([
//            label1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            label1.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//        ])
//        
//    }
//    
//    private func initialConfigrationSecondLabel() {
//        
//        view.addSubview(secondLabel)
//        
//        NSLayoutConstraint.activate([
//            secondLabel.topAnchor.constraint(equalTo: label1.bottomAnchor,constant: 10),
//            secondLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
//        ])
//    }
//    
//    
//    private func resetLabelLayout() {
//        label1.removeFromSuperview()
//
//        NSLayoutConstraint.activate([
//            secondLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            secondLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//        ])
//        
//        
//        self.view.layoutIfNeeded()
//        
//    }
//    
//    @objc func doSomething(){
//        resetLabelLayout()
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        initialConfigrationLabel1()
//        initialConfigrationSecondLabel()
//        
//        let addButton = UIBarButtonItem(title: NSLocalizedString("AddTitle", comment: ""),
//                                        style: .plain,
//                                        target: self,
//                                        action: #selector(doSomething))
//        navigationItem.rightBarButtonItem = addButton
//        title = "View"
//        
////        let button = UIBarButtonItem(
//        
//        view.backgroundColor = .white
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
