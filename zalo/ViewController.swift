//
//  ViewController.swift
//  zalo
//
//  Created by Ngoduc on 5/22/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let listPerson = PersonData().getListPerson()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "MainCellTableViewCell", bundle: nil), forCellReuseIdentifier: "MainCellTableViewCell")
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addContact))
    }

    @objc func addContact(){
        let vc = DataViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
}
extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCellTableViewCell", for: indexPath) as! MainCellTableViewCell
        cell.imageName.image = UIImage(named: listPerson[indexPath.row].image)
        cell.name.text = listPerson[indexPath.row].name
        cell.message.text = listPerson[indexPath.row].message
        cell.time.text = listPerson[indexPath.row].time
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}
