
import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "cartoon-cat"))
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 50
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        return imageView
    }()
    
    private lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Hipster Cat"
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        return nameLabel
    }()
    
    private lazy var statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.text = "Listening to music"
        statusLabel.textColor = UIColor.gray
        statusLabel.font = UIFont.systemFont(ofSize: 14)
        return statusLabel
    }()
    
    private var statusText: String = ""
    
    private lazy var textFieldStatus: UITextField = {
        let textFieldStatus = UITextField()
        textFieldStatus.layer.borderWidth = 1
        textFieldStatus.layer.borderColor = UIColor.black.cgColor
        textFieldStatus.layer.backgroundColor = UIColor.white.cgColor
        textFieldStatus.layer.cornerRadius = 12
        textFieldStatus.textColor = UIColor.black
        textFieldStatus.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        textFieldStatus.addTarget(self, action: #selector(statusTextChanged(_:)), for: .editingChanged)
        return textFieldStatus
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Set status", for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 4
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(button)
        addSubview(statusLabel)
        addSubview(textFieldStatus)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func statusTextChanged(_ textField: UITextField) {
        statusText = textField.text ?? ""
        print(statusText)
    }
    
    @objc func buttonPressed() {
        print("Status")
        statusLabel.text = textFieldStatus.text
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = CGRect(x: 16, y: 16, width: 100, height: 100)
        nameLabel.frame = CGRect(x: 132, y: 27, width: self.bounds.width - 132 - 16, height: 32)
        statusLabel.frame = CGRect(x: 132, y: 66, width: self.bounds.width - 132 - 16, height: 32)
        button.frame = CGRect(x: 16, y: 159, width: self.bounds.width - 32, height: 50)
        textFieldStatus.frame = CGRect(x: 132, y: 103, width: self.bounds.width - 132 - 16, height: 40)
    }
    
}


