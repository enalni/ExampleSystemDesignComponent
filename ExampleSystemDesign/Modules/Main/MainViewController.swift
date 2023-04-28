import UIKit

final class MainViewController: UIViewController {
    
    // MARK: Private property
    private let doneButton = UIKitButton(
        title: "Done Button",
        image: .add,
        type: .primary,
        size: .small,
        cornerRadius: .primary,
        fontSize: .medium,
        state: .defaultt,
        action: {}
    )
    
    private let cancelButton = UIKitButton(
        title: "CANCEL",
        image: .checkmark,
        type: .cancel,
        size: .medium,
        cornerRadius: .primary,
        fontSize: .big,
        state: .defaultt,
        action: {}
    )
    
    // MARK: - Private constraint
    private enum UIConstants {
        static let topCancelButtonSet: CGFloat = 100
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
}

// MARK: Private methods
private extension MainViewController {
    func initialize() {
        
        view.backgroundColor = .white
        
        doneButton.translatesAutoresizingMaskIntoConstraints = false
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(doneButton)
        view.addSubview(cancelButton)
        
        NSLayoutConstraint.activate([
            doneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            doneButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            cancelButton.topAnchor.constraint(equalTo: doneButton.bottomAnchor, constant: UIConstants.topCancelButtonSet),
            cancelButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}
