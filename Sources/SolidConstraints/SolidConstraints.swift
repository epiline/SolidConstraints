#if !os(macOS)
import UIKit
#endif

class SolidConstraints {
    
    private weak var view: UIView!
    
    private var constraints: [NSLayoutConstraint] = []
    
    init(superView: UIView, addSubview subview: UIView) {
        superView.addSubview(subview)
        subview.translatesAutoresizingMaskIntoConstraints = false
        self.view = subview
    }
    
    // base
    
    func top(_ anchor: NSLayoutYAxisAnchor, value constant: CGFloat = 0) -> SolidConstraints {
        constraints.append(view.topAnchor.constraint(equalTo: anchor, constant: constant))
        return self
    }
    
    func bottom(_ anchor: NSLayoutYAxisAnchor, value constant: CGFloat = 0) -> SolidConstraints {
        constraints.append(view.bottomAnchor.constraint(equalTo: anchor, constant: -constant))
        return self
    }
    
    func left(_ anchor: NSLayoutXAxisAnchor, value constant: CGFloat = 0) -> SolidConstraints {
        constraints.append(view.leftAnchor.constraint(equalTo: anchor, constant: constant))
        return self
    }
    
    func right(_ anchor: NSLayoutXAxisAnchor, value constant: CGFloat = 0) -> SolidConstraints {
        constraints.append(view.rightAnchor.constraint(equalTo: anchor, constant: -constant))
        return self
    }
    
    // sizes
    
    func width(_ widthValue: CGFloat) -> SolidConstraints {
        constraints.append(view.widthAnchor.constraint(equalToConstant: widthValue))
        return self
    }
    
    func height(_ heightValue: CGFloat) -> SolidConstraints {
        constraints.append(view.heightAnchor.constraint(equalToConstant: heightValue))
        return self
    }
    
    // others
    
    func addConstraint(_ constraint: NSLayoutConstraint) -> SolidConstraints {
        constraints.append(constraint)
        return self
    }
    
    func activate() {
        NSLayoutConstraint.activate(constraints)
    }
}
