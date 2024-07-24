//
//  PageViewCell.swift
//  NearBy
//
//  Created by Ahmed Amin on 24/07/2024.
//

import UIKit

class PageViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var pageView: UIPageControl!
    
    
    // MARK: - awakeFromNib
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupContainerView()
        setupPageView()
        
    }
    
    // Configure Cell
    
    func configure() {
        
    }
    
}

// MARK: - Helper Methods

extension PageViewCell {

    private func setupContainerView() {
     
        containerView.layer.cornerRadius = 8.0
        containerView.layer.borderWidth = 1.0
        containerView.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    private func setupPageView() {
        
    }
    
}
