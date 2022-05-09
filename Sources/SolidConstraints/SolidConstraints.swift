#if !os(macOS)
import UIKit
#endif

public class SolidConstraints {
    
    private weak var view: UIView!
    
    private var constraints: [NSLayoutConstraint] = []
    
    public init(superView: UIView, addSubview subview: UIView) {
        superView.addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = false
        self.view = subview
    }
    
    // base
    
    public func top(_ anchor: NSLayoutYAxisAnchor, value constant: CGFloat = 0) -> SolidConstraints {
        constraints.append(view.topAnchor.constraint(equalTo: anchor, constant: constant))
        return self
    }
    
    public func bottom(_ anchor: NSLayoutYAxisAnchor, value constant: CGFloat = 0) -> SolidConstraints {
        constraints.append(view.bottomAnchor.constraint(equalTo: anchor, constant: -constant))
        return self
    }
    
    public func left(_ anchor: NSLayoutXAxisAnchor, value constant: CGFloat = 0) -> SolidConstraints {
        constraints.append(view.leftAnchor.constraint(equalTo: anchor, constant: constant))
        return self
    }
    
    public func right(_ anchor: NSLayoutXAxisAnchor, value constant: CGFloat = 0) -> SolidConstraints {
        constraints.append(view.rightAnchor.constraint(equalTo: anchor, constant: -constant))
        return self
    }
    
    // sizes
    
    public func width(_ widthValue: CGFloat) -> SolidConstraints {
        constraints.append(view.widthAnchor.constraint(equalToConstant: widthValue))
        return self
    }
    
    public func height(_ heightValue: CGFloat) -> SolidConstraints {
        constraints.append(view.heightAnchor.constraint(equalToConstant: heightValue))
        return self
    }
    
    // others
    
    public func addConstraint(_ constraint: NSLayoutConstraint) -> SolidConstraints {
        constraints.append(constraint)
        return self
    }
    
    public func activate() {
        NSLayoutConstraint.activate(constraints)
    }
}
