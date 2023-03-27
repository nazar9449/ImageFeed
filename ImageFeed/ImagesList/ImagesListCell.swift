import UIKit

final class ImagesListCell:UITableViewCell {
    static let reuseIdentifier = "ImagesListCell"
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var dateLabel: UILabel!
    
    func changeFont(){
        dateLabel.font = UIFont(name: "SF-Pro-Text-Regular.otf", size: 23)
    }
}
