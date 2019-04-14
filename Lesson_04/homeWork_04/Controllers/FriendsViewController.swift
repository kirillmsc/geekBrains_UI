//
//  FriendsViewController.swift
//  homeWork_03
//
//  Created by k.kochemasov on 10/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

class FriendsViewController: UITableViewController {
    
    public let friends: [Friends] = [
        Friends(name: "Nikita", surname: "Surkot", yo: 21, city: "Moscow"),
        Friends(name: "Vasiliy", surname: "Ivaev", yo: 26, city: "Køln"),
        Friends(name: "Ann", surname: "Kiunova", yo: 25, city: "Verna"),
        Friends(name: "Vladimir", surname: "Vorotin", yo: 25, city: "Moscow"),
        Friends(name: "Maks", surname: "Volchinin", yo: 26, city: "Moscow")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FriendsCell.reuseId, for: indexPath) as? FriendsCell else {fatalError("Cell cannot be dequeued")}

        cell.friendsLabel.text = friends[indexPath.row].name
        cell.surnameLabel.text = friends[indexPath.row].surname

        return cell
    }
}
