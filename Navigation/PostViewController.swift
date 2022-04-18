//
//  PostViewController.swift
//  Navigation
//
//  Created by Иван Могутов on 17.04.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    @objc private func buttonAction1() {
        
        let infoViewController = InfoViewController()

        self.present(infoViewController, animated: true)
    }
   
    
    
    
    
    private func setupView() {
        let button = UIBarButtonItem(title: "Delete post", style: .plain, target: self, action: #selector(buttonAction1))
        
        self.view.backgroundColor = .systemBackground
        
        self.navigationItem.title = titlePost
        
        self.navigationItem.rightBarButtonItem = button
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    
    var titlePost: String = "Anonymous"
    
        
    
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
