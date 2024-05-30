//
//  WorkLogTrackerViewController.swift
//  Finance Tracker
//
//  Created by Luis Leal on 5/29/24.
//

import Foundation
import UIKit

class WorkLogTrackerViewController: UIViewController {
    
    // MARK: - Properties
    
    // properties for this view controller

    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up the view
        setupView()
    }
    
    // MARK: - Private Methods
    
    private func setupView() {
        view.backgroundColor = .white
        // UI/Layout/label

        
        let titleLabel = UILabel()
        titleLabel.text = "Work log tracker"
        titleLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(titleLabel)
        
        // Set up constraints for the label
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }
}
