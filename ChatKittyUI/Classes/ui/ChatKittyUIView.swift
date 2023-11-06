import UIKit

public final class ChatKittyUIView: UIView {
    private let configuration: ChatUIConfiguration
    
    init(configuration: ChatUIConfiguration) {
        self.configuration = configuration
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
