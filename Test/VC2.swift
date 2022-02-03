////
////  VC2.swift
////  Test
////
////  Created by Arteezy on 12/10/21.
////
//
//import Foundation
//import UIKit
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        view.addSubview(scrollView)
//        
//        title = "Home"
//        self.navigationController?.navigationBar.prefersLargeTitles = true
////        self.navigationController?.navigationBar.backgroundColor = .white
//        
//        scrollView.addSubview(scrollViewContainer)
//        scrollViewContainer.addArrangedSubview(redView)
//        scrollViewContainer.addArrangedSubview(blueView)
//        scrollViewContainer.addArrangedSubview(greenView)
//
//        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
//
//        scrollViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
//        scrollViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
//        scrollViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
//        scrollViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
//        // this is important for scrolling
//        scrollViewContainer.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
//    }
//
//    let scrollView: UIScrollView = {
//        let scrollView = UIScrollView()
//
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        return scrollView
//    }()
//
//    let scrollViewContainer: UIStackView = {
//        let view = UIStackView()
//
//        view.axis = .vertical
//        view.spacing = 10
//
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//
//    let redView: UIView = {
//        let view = UIView()
//        view.heightAnchor.constraint(equalToConstant: 500).isActive = true
//        view.backgroundColor = .red
//        return view
//    }()
//
//    let blueView: UIView = {
//        let view = UIView()
//        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
//        view.backgroundColor = .blue
//        return view
//    }()
//
//    let greenView: UIView = {
//        let view = UIView()
//        view.heightAnchor.constraint(equalToConstant: 1200).isActive = true
//        view.backgroundColor = .green
//        return view
//    }()
//}
////import UIKit
////
////
////class ViewController: UIViewController {
////
////    let customTitle: UILabel = {
////        let customTitle = UILabel()
////        customTitle.text = "Pig"
////        customTitle.font = .systemFont(ofSize: 18, weight: .bold)
////        customTitle.backgroundColor = .red
////        return customTitle
////    }()
////
////    let scrollView: UIScrollView = {
////        let scrollView = UIScrollView()
////        scrollView.translatesAutoresizingMaskIntoConstraints = false
////        scrollView.isScrollEnabled = true
////        return scrollView
////    }()
////
////    override func viewDidLoad() {
////        super.viewDidLoad()
////
////        title = "Piug"
////
////
////        self.navigationController?.navigationBar.prefersLargeTitles = true
////        view.backgroundColor = .white
////        self.navigationController?.navigationBar.tintColor = .yellow
////        customTitle.translatesAutoresizingMaskIntoConstraints = false
////        view.addSubview(scrollView)
////        scrollView.addSubview(customTitle)
//////        view.addSubview(customTitle)
////
////        NSLayoutConstraint.activate([
////            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
////            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
////            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
////            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
////        ])
////
////        NSLayoutConstraint.activate([
////            customTitle.centerYAnchor.constraint(equalTo: view.centerYAnchor),
////            customTitle.heightAnchor.constraint(equalToConstant: 5000),
////            customTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor)
////        ])
////
////    }
////}
