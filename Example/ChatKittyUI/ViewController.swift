import UIKit
import ChatKittyUI

class ViewController: UIViewController {
    private lazy var chatkittyUi: ChatKittyUIView = {
        let view = ChatKittyUIView(configuration: ChatUIConfiguration(widgetId: "UWiEkKvdAaUJ1xut",
                                                                      username: "c6f75947-af48-4893-a78e-0e0b9bd68580",
                                                                      theme: .dark))
        view.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(view)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        NSLayoutConstraint.activate([
            chatkittyUi.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            chatkittyUi.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            chatkittyUi.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            chatkittyUi.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

