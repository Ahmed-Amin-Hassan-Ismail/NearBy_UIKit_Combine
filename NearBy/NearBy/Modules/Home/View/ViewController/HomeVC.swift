//
//  HomeVC.swift
//  NearBy
//
//  Created by Ahmed Amin on 24/07/2024.
//

import UIKit

class HomeVC: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupTableView()
    }

}

// MARK: - Setup View

extension HomeVC {
    
    private func setupView() {
        
        title = "Home"
    }
    
    private func setupTableView() {
        
        tableView.registerForNib(PageViewCell.self)
        tableView.registerForNib(GeneralViewCell.self)
        tableView.dataSource = self
    }
}

extension HomeVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
         return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 4
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: PageViewCell.reuseIdentifier, for: indexPath) as! PageViewCell
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: GeneralViewCell.reuseIdentifier, for: indexPath) as! GeneralViewCell
            
            return cell
        }
    }
}

// MARK: - StoryboardMakable

extension HomeVC: StoryboardMakable {
    
    typealias StoryboardMakeableType = HomeVC
    static var storyboardName: String = Storyboard.homeVC
}
