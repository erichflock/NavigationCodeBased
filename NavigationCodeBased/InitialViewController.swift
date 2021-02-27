//
//  InitialViewController.swift
//  NavigationCodeBased
//
//  Created by Erich Flock on 14.01.21.
//

import UIKit

class InitialViewController: UIViewController {

    private(set) var nextButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        view.backgroundColor = .white
        setupNextButton()
    }
    
    private func setupNextButton() {
        nextButton = UIButton()
        nextButton?.addTarget(self, action: #selector(didTapNextButton), for: .touchUpInside)
    }
    
    @objc private func didTapNextButton() {
        print("didTapNextButton")
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: false)
    }
}

