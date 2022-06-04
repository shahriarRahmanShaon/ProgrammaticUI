import UIKit

class ViewController: UIViewController {

    let bearImageView: UIImageView = {
        
        let imageView = UIImageView(image: UIImage(named: "bear_first"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let headlineText: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "We are learning auto layout programmatically",
                                                       attributes: [ NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 20), NSMutableAttributedString.Key.foregroundColor: UIColor.black ])
        attributedText.append(NSMutableAttributedString(string: "\n\n\n Are yoy ready to rock and roll, lets have fun together",
                                                        attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSMutableAttributedString.Key.foregroundColor: UIColor.gray ]))
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    let previousButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Prev", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.addSubview(headlineText)
        setupBottomControlls()
        setupLayout()
    }

    func setupBottomControlls(){
        view.addSubview(previousButton)
        previousButton.backgroundColor = .green
        previousButton.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        NSLayoutConstraint.activate([
            previousButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            previousButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            previousButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            previousButton.heightAnchor.constraint(equalToConstant: 55)
        ])
        
    }
    
    func setupLayout() {
        let topImageContainerView = UIView()
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(topImageContainerView)
        topImageContainerView.addSubview(bearImageView)
        
        NSLayoutConstraint.activate([
            
            topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            bearImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor),
            bearImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor),
            bearImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5),
            
            headlineText.topAnchor.constraint(equalTo: bearImageView.bottomAnchor, constant: 100),
            headlineText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            headlineText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            headlineText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
            
        ])
    }

}

