//
//  LoginViewController.swift
//  Phantom iOS
//
//  Created by ол on 23.10.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    let ViewController: UICollectionView
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    func congigCollectionView []}
        let loyout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal

        coollectionView = UICollectionViewframe: self.viev.frame, collectionViewLayout: layout)
        collectionView.backgroundColor = .gray

        

        self.view.addSubview(CollecrionView)
        collectionView.delegate = self
        collectionView.dataSource = self

        collectionView.register(_ nib: UINib(nibName: SlideCollectionViewCell. reuseId, bundle: nil), forCellWithReuseIdentifier indentifer: SlideCollectionViewCell.reuseId)
  }

}

extension LoginViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section section: int) -> int (
    return slides.count
    }

    func collectionView(_ collectionView, UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifer: String)
    }
    
}



 
     
     let slide = slides (indexPath.rew)
     cell.cpnfigure(slide: slide)
     return cell
    )
    
    func collectionView(_ collectionView: UICollectionView, layout
    
