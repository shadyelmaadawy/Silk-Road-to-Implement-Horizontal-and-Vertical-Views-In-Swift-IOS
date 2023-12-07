//
//  ViewController.swift
//  HV_View
//
//  Created by Shady El-Maadawy on 03/12/2023.
//

import UIKit

class ViewController: UIViewController {

    lazy var safeArea: UILayoutGuide = {
        return self.view.safeAreaLayoutGuide
    }()
    
    var scrollView: UIScrollView = {
        let scrollView = UIScrollView.init()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()

    var containerView: UIView = {
        let uiView = UIView.init()
        uiView.translatesAutoresizingMaskIntoConstraints = false
        return uiView
    }()
    
    var topLabel: UILabel = {
        let baseLabel = UILabel.init()
        baseLabel.textAlignment = .center
        baseLabel.textColor = .white
        baseLabel.backgroundColor = .systemBrown
        baseLabel.text = "Here the top label"
        baseLabel.translatesAutoresizingMaskIntoConstraints = false
        return baseLabel
    }()
    
    var middleTextField: UITextField = {
        let baseTextField = UITextField.init()
        baseTextField.borderStyle = .roundedRect
        baseTextField.placeholder = "Hello-World!;"
        baseTextField.translatesAutoresizingMaskIntoConstraints = false
        return baseTextField
    }()
    
    var bottomButton: UIButton = {
        let baseButton = UIButton.init()
        baseButton.backgroundColor = .systemBlue
        baseButton.setTitle("Click me", for: .normal)
        baseButton.translatesAutoresizingMaskIntoConstraints = false
        return baseButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemBackground
        
        layoutSubView()
    }

    
}

extension ViewController {

    func layoutSubView() {
        layoutScrollView()
        layoutContainerView()
        
        layoutTopLabel()
        layoutMiddleTextField()
        layoutBottomButton()
    }
    
    func layoutScrollView() {
        
        self.view.addSubview(scrollView)

        let scrollViewConstraints = [
            scrollView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
        ]
        NSLayoutConstraint.activate(scrollViewConstraints)
        
    }

    func layoutContainerView() {
        
        self.scrollView.addSubview(containerView)
        
        let containerViewConstraints = [
            containerView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            containerView.widthAnchor.constraint(greaterThanOrEqualTo: scrollView.widthAnchor),
            containerView.heightAnchor.constraint(greaterThanOrEqualTo: scrollView.heightAnchor)
        ]
        NSLayoutConstraint.activate(containerViewConstraints)
        
    }
    
    func layoutTopLabel() {
     
        self.containerView.addSubview(topLabel)
        
        let topLabelConstraints = [
            topLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 12),
            topLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12),
            topLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -12)
        ]
        NSLayoutConstraint.activate(topLabelConstraints)
    }
    
    func layoutMiddleTextField() {
        
        self.containerView.addSubview(middleTextField)
        
        let middleTextFieldConstraints = [
            middleTextField.topAnchor.constraint(greaterThanOrEqualTo: topLabel.bottomAnchor, constant: 204),
            middleTextField.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            middleTextField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12),
            middleTextField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -12)
        ]
        NSLayoutConstraint.activate(middleTextFieldConstraints)
        
    }
    
    func layoutBottomButton() {
     
        self.containerView.addSubview(bottomButton)
        
        let bottomButtonConstraints = [
            bottomButton.topAnchor.constraint(greaterThanOrEqualTo: middleTextField.bottomAnchor, constant: 105),
            bottomButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -12),
            bottomButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12),
            bottomButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -12)
        ]
        NSLayoutConstraint.activate(bottomButtonConstraints)
        
    }
    

}
