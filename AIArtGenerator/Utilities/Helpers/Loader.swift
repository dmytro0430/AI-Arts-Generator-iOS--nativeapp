//
//  Loader.swift
//  AIArtGenerator
//

import Foundation
import SVProgressHUD
import UIKit

class Loader {

    // MARK: - Loading Indicator
    static let thickness = CGFloat(6.0)
    static let radius = CGFloat(22.0)

    class func showLoader(title: String = "Loading...") {
        DispatchQueue.main.async {
            SVProgressHUD.setBackgroundColor(UIColor.clear)
            SVProgressHUD.setDefaultMaskType(.clear)
            SVProgressHUD.setRingThickness(thickness)
            SVProgressHUD.setRingRadius(radius)
            SVProgressHUD.setMaximumDismissTimeInterval(60)
            SVProgressHUD.setForegroundColor(UIColor.blue)
            if !SVProgressHUD.isVisible() {
                SVProgressHUD.show()
            }
        }
    }

    class func showLoaderInView(title: String = "Loading...", view: UIView) {
        DispatchQueue.main.async {
            SVProgressHUD.setBackgroundColor(UIColor.clear)
            SVProgressHUD.setDefaultMaskType(.clear)
            SVProgressHUD.setRingThickness(thickness)
            SVProgressHUD.setRingRadius(radius)
            if !SVProgressHUD.isVisible() {
                SVProgressHUD.show()
            }
        }
    }

    class func hideLoader() {
        DispatchQueue.main.async {
            SVProgressHUD.dismiss()
        }
    }

    class func hideLoaderInView(view: UIView) {
        DispatchQueue.main.async {
            SVProgressHUD.dismiss()
        }
    }
}
