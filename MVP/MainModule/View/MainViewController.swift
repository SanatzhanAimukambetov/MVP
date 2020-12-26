//
//  ViewController.swift
//  MVP
//
//  Created by Sanatzhan Aimukambetov on 26.12.2020.
//

import UIKit

class MainViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var greetingLabel: UILabel!
    
    var presenter: MainViewPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - IBAction
    @IBAction func didTapButtonAction(_ sender: Any) {
        self.presenter.showGreeting()
    }
}

extension MainViewController: MainViewProtocol {
    
    func setGreeting(greeting: String) {
        self.greetingLabel.text = greeting
    }
}

