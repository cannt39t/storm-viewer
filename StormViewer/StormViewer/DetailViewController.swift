//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Илья Казначеев on 13.04.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    var selected: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selected
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selected {
            image.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
