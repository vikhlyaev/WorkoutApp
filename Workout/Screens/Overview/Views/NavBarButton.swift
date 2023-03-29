import UIKit

final class NavBarButton: UIButton {
    private lazy var label: UILabel = {
        let label = UILabel()
        label.font = .robotoMedium(with: 15)
        label.textAlignment = .center
        label.textColor = .customActive
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var iconView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "down_arrow")?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = .customActive
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .customBackgroundButton
        layer.cornerRadius = 14
        
        makeSystem(self)
        
        addSubview(label)
        addSubview(iconView)
    }
    
    func configure(title: String) {
        label.text = title
    }
}

// MARK: - Setting Constraints

extension NavBarButton {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -10),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
}
