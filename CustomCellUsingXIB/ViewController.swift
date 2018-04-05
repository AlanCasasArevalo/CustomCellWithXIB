//
//  ViewController.swift
//  Test
//
//  Created by Alan Casas on 5/4/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    var collectionView: UICollectionView!
    
    var arrayOfAnimal: [Animal] = []
    let Juancho: Animal = Animal(name: "Juancho", comment: "Lagarto", image: #imageLiteral(resourceName: "lizard"))
    let Pepe: Animal = Animal(name: "Pepe", comment: "Perros", image: #imageLiteral(resourceName: "dogMassage"))
    let Cami: Animal = Animal(name: "Cami", comment: "Camaleon", image: #imageLiteral(resourceName: "camaleon"))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayOfAnimal.append(Juancho)
        arrayOfAnimal.append(Pepe)
        arrayOfAnimal.append(Cami)
        arrayOfAnimal.append(Juancho)
        arrayOfAnimal.append(Pepe)
        arrayOfAnimal.append(Cami)
        arrayOfAnimal.append(Juancho)
        arrayOfAnimal.append(Pepe)
        arrayOfAnimal.append(Cami)
        arrayOfAnimal.append(Juancho)
        arrayOfAnimal.append(Pepe)
        arrayOfAnimal.append(Cami)
        arrayOfAnimal.append(Juancho)
        arrayOfAnimal.append(Pepe)
        arrayOfAnimal.append(Cami)
        arrayOfAnimal.append(Juancho)
        arrayOfAnimal.append(Pepe)
        arrayOfAnimal.append(Cami)

        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 400, height: 150)
        
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView!.register(UINib(nibName: "RDCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        collectionView.backgroundColor = UIColor.white
        self.view.addSubview(collectionView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfAnimal.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let animalToShow = arrayOfAnimal[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! RDCell
        
        cell.backgroundColor = UIColor.orange
        
        cell.imageView.image = animalToShow.image
        cell.nameLabel.text = animalToShow.name
        cell.commentLabel.text = animalToShow.comment
        
        return cell
    }
    
}






















