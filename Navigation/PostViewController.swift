//
//  PostViewController.swift
//  Navigation
//
//  Created by Иван Могутов on 17.04.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var titlePost: String = "Anonymous"
    
    private func setupView() {
        self.view.backgroundColor = .systemBackground
        
        self.navigationItem.title = titlePost
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    
    
    
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
