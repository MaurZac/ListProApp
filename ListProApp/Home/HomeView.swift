//
//  HomeView.swift
//  ListProApp
//
//  Created by Mauricio Zarate on 30/05/22.
//  
//

import Foundation
import UIKit

class HomeView: UITabBarController, UISearchControllerDelegate {

    // MARK: Properties
    var presenter: HomePresenterProtocol?
    let searchBarController = UISearchController()
    
    let loginBtn: UIButton = {
        let button = UIButton()
        let attributedString = NSMutableAttributedString(attributedString: NSAttributedString(string: "Log in", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), ]))
        button.setAttributedTitle(attributedString, for: .normal)
        button.layer.cornerRadius = 15
        button.setTitleColor(.white, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(red: 28/255, green: 40/255, blue: 51/255, alpha: 1).cgColor
        button.addTarget(self, action: #selector(goToLogin), for: .touchUpInside)
        return button
    }()
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        title = "ListPro Blog"
        configuareUi()
       
        
        
    }
    
    @objc func goToLogin() {

    }
    
    func configuareUi(){
       searchBarController.delegate = self
       navigationItem.searchController = searchBarController
        navigationItem.titleView?.backgroundColor = .yellow
        view.backgroundColor = .systemGray6
        
        let vc1 = FirtsViewController()
        let vc2 = SecondViewController()
        vc1.title = "Home"
        vc2.title = "Write"
        self.setViewControllers([vc1,vc2], animated: true)
        self.tabBar.backgroundColor = .systemGray6
        guard let items = self.tabBar.items else { return }
        let images = ["house","square.and.pencil"]
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        
        view.addSubview(loginBtn)
        loginBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        loginBtn.widthAnchor.constraint(equalToConstant: 180).isActive = true
        loginBtn.heightAnchor.constraint(equalToConstant: 30).isActive = true
        loginBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    
   
    
}

extension HomeView: HomeViewProtocol {
    // TODO: implement view output methods
}

extension HomeView: UISearchBarDelegate {
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
    }
}

class FirtsViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}
class SecondViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
    }
}
