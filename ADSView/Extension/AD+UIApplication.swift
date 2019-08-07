//
// Created by Mickael Belhassen on 2019-08-06.
// Copyright (c) 2019 Mickael Belhassen. All rights reserved.
//

import UIKit

extension UIApplication {

    class func getTopViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return getTopViewController(base: nav.visibleViewController)
        }

        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return getTopViewController(base: selected)
            }
        }

        if let presented = base?.presentedViewController {
            return getTopViewController(base: presented)
        }

        return base
    }

}

extension UIApplication {

    var statusBarView: UIView? {
        return value(forKey: "statusBar") as? UIView
    }

}
