//
//  FriendsViewController.swift
//  homeWork_03
//
//  Created by k.kochemasov on 10/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

<<<<<<< HEAD
class FriendsViewController: UITableViewController {
    
    public let friends: [Friends] = [
=======
class FriendsViewController: UITableViewController, UISearchBarDelegate {
    
    @IBOutlet var searchBar: UISearchBar!
    
    var searchController: UISearchController!
    let friends: [Friends] = [
>>>>>>> animation
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
<<<<<<< HEAD
        Friends(name: "Dima", surname: "Volkov"),
        Friends(name: "Kir", surname: "Klimin"),
=======
        Friends(name: "Dima", surname: "Solomov"),
        Friends(name: "Kir", surname: "Voinov"),
>>>>>>> animation
        Friends(name: "Dima", surname: "Gerov"),
        Friends(name: "Maks", surname: "Solomov"),
        Friends(name: "Maks", surname: "Voinov")
    ]
<<<<<<< HEAD

=======
    
    var firstNameLetter = [String]()
    var friendsDict = [String : [Friends]]()
    var searchFriend = [Friends]()
    var search = false
    
>>>>>>> animation
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
<<<<<<< HEAD
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FriendsCell.reuseId, for: indexPath) as? FriendsCell else {fatalError("Cell cannot be dequeued")}

        cell.friendsLabel.text = friends[indexPath.row].name
        cell.surnameLabel.text = friends[indexPath.row].surname

        return cell
    }
=======
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FriendsCell.reuseId, for: indexPath) as? FriendsCell else { fatalError("Cell cannot be dequeued")}
        if search {
            cell.friendsLabel.text = searchFriend[indexPath.row].name
            cell.surnameLabel.text = searchFriend[indexPath.row].surname
        } else {
            let friendNameKey = firstNameLetter[indexPath.section]
            if let friendValue = friendsDict[friendNameKey] {
                cell.friendsLabel.text = friendValue[indexPath.row].name
                cell.surnameLabel.text = friendValue[indexPath.row].surname
            }
        }
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if search {
            return nil
        } else {
            return firstNameLetter[section]
        }
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        if search {
            return nil
        } else {
            return firstNameLetter
        }
    }
    
    @objc private func keyboardWasHidden(notification: Notification) {
        let contentInsets = UIEdgeInsets.zero
        tableView.contentInset = contentInsets
    }
    
    @objc private func hideKeyboard() {
        tableView.endEditing(true)
    }
    
    func searchBar (_ searchBar: UISearchBar, textDidChange searchText: String) {
        tableView.tableHeaderView = searchBar
        searchFriend = friends.filter({$0.name.prefix(searchText.count) == searchText})
        search = true
        tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        search = false
        searchBar.text = ""
        hideKeyboard()
        tableView.reloadData()
    }
>>>>>>> animation
}
