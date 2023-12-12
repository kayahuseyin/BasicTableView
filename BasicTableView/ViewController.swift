//
//  ViewController.swift
//  BasicTableView
//
//  Created by Hüseyin Kaya on 12.12.2023.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var foodList = [Foods]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let y1 = Foods(foodName: "Ayran", foodPhotoName: "ayran", foodPrice: 3.0)
        let y2 = Foods(foodName: "Baklava", foodPhotoName: "baklava", foodPrice: 20.0)
        let y3 = Foods(foodName: "Fanta", foodPhotoName: "fanta", foodPrice: 5.0)
        let y4 = Foods(foodName: "Izgara Somon", foodPhotoName: "izgarasomon", foodPrice: 25.0)
        let y5 = Foods(foodName: "Izgara Tavuk", foodPhotoName: "izgaratavuk", foodPrice: 15.0)
        let y6 = Foods(foodName: "Kadayıf", foodPhotoName: "kadayif", foodPrice: 16.0)
        let y7 = Foods(foodName: "Kahve", foodPhotoName: "kahve", foodPrice: 6.0)
        let y8 = Foods(foodName: "Köfte", foodPhotoName: "kofte", foodPrice: 15.0)
        let y9 = Foods(foodName: "Lazanya", foodPhotoName: "lazanya", foodPrice: 21.0)
        let y10 = Foods(foodName: "Makarna", foodPhotoName: "makarna", foodPrice: 13.0)
        let y11 = Foods(foodName: "Pizza", foodPhotoName: "pizza", foodPrice: 18.0)
        let y12 = Foods(foodName: "Su", foodPhotoName: "su", foodPrice: 1.0)
        let y13 = Foods(foodName: "Sütlaç", foodPhotoName: "sutlac", foodPrice: 10.0)
        let y14 = Foods(foodName: "Tiramisu", foodPhotoName: "tiramisu", foodPrice: 16.0)
        let y15 = Foods(foodName: "Hamburger", foodPhotoName: "hamburger", foodPrice: 18.0)
        //Verilerin Listeye Eklenmesi
        foodList.append(y1)
        foodList.append(y2)
        foodList.append(y3)
        foodList.append(y4)
        foodList.append(y5)
        foodList.append(y6)
        foodList.append(y7)
        foodList.append(y8)
        foodList.append(y9)
        foodList.append(y10)
        foodList.append(y11)
        foodList.append(y12)
        foodList.append(y13)
        foodList.append(y14)
        foodList.append(y15)
        
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        foodList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let order = foodList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
        
        cell.foodNameLabel.text = order.foodName
        cell.foodImageView.image = UIImage(named: order.foodPhotoName!)
        cell.foodPriceLabel.text = ("\(order.foodPrice!) TL")
        
        return cell
        
    }
    
    

}
