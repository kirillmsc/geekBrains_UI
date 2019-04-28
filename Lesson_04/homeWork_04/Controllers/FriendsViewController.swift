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
        Friends(name: "Nikita", surname: "Surkot"),
        Friends(name: "Vasiliy", surname: "Ivaev"),
        Friends(name: "Ann", surname: "Kiunova"),
        Friends(name: "Vladimir", surname: "Vorotin"),
        Friends(name: "Maks", surname: "Volchinin"),
        Friends(name: "Alex", surname: "Minin"),
        Friends(name: "Dima", surname: "Volkov"),
        Friends(name: "Kir", surname: "Klimin"),
        Friends(name: "Anton", surname: "Gerov"),
        Friends(name: "German", surname: "Solomov"),
        Friends(name: "Dima", surname: "Voinov"),
        Friends(name: "Maks", surname: "Minin"),
        Friends(name: "Dima", surname: "Volkov"),
        Friends(name: "Kir", surname: "Klimin"),
        Friends(name: "Dima", surname: "Gerov"),
        Friends(name: "Maks", surname: "Solomov"),
        Friends(name: "Maks", surname: "Voinov")
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
