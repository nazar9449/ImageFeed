import UIKit

final class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let avatarImage = makeAvatarImage()
        let username = makeUsername()
        let nickname = makeNickname()
        let profileDescription = makeProfileDescription()
        let logoutButton = makeLogoutButton()
        
        NSLayoutConstraint.activate([
            avatarImage.heightAnchor.constraint(equalToConstant: 70),
            avatarImage.widthAnchor.constraint(equalToConstant: 70),
            avatarImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 76),
            avatarImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            username.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 8),
            username.leadingAnchor.constraint(equalTo: avatarImage.leadingAnchor),
            nickname.topAnchor.constraint(equalTo: username.bottomAnchor, constant: 8),
            nickname.leadingAnchor.constraint(equalTo: avatarImage.leadingAnchor),
            profileDescription.topAnchor.constraint(equalTo: nickname.bottomAnchor, constant: 8),
            profileDescription.leadingAnchor.constraint(equalTo: avatarImage.leadingAnchor),
            logoutButton.heightAnchor.constraint(equalToConstant: 44),
            logoutButton.widthAnchor.constraint(equalToConstant: 44),
            logoutButton.centerYAnchor.constraint(equalTo: avatarImage.centerYAnchor),
            logoutButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24)
        ])
    }
    
    func makeAvatarImage() -> UIImageView { // добавляем аватарку пользователя
        let avatarImage = UIImageView(image: UIImage(named: "Photo"))
        view.addSubview(avatarImage)
        avatarImage.translatesAutoresizingMaskIntoConstraints = false
        
        return avatarImage
    }
    
    func makeUsername() -> UILabel { // добавляем имя пользователя
        let username = UILabel()
        view.addSubview(username)
        username.translatesAutoresizingMaskIntoConstraints = false
        username.text = "Екатерина Новикова"
        username.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        username.textColor = .white
        
        return username
    }
    
    func makeNickname() -> UILabel { // добавляем никнейм пользователя
        let nickname = UILabel()
        view.addSubview(nickname)
        nickname.translatesAutoresizingMaskIntoConstraints = false
        nickname.text = "@ekaterina_nov"
        nickname.textColor = .gray
        nickname.font = UIFont.systemFont(ofSize: 13)
        
        return nickname
    }
    
    func makeProfileDescription() -> UILabel { // добавляем описание профиля пользователя
        let profileDescription = UILabel()
        view.addSubview(profileDescription)
        profileDescription.translatesAutoresizingMaskIntoConstraints = false
        profileDescription.text = "Hello, World!"
        profileDescription.textColor = .white
        profileDescription.font = UIFont.systemFont(ofSize: 13)
        
        return profileDescription
    }
    
    func makeLogoutButton() -> UIButton { // добавляем кнопку логаута
        let logoutButton = UIButton()
        view.addSubview(logoutButton)
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        logoutButton.setImage(UIImage(named: "logout"), for: .normal)
        
        return logoutButton
    }
}
