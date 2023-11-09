//
//  TabBarController.swift
//  AIArtGenerator
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    var currentTab: Tab = .create
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }
    
    /// setupTabs
    func setupTabs() {
        viewControllers = currentTab.viewControllers
        selectedIndex = currentTab.index
        
        tabBar.tintColor = .gray
        tabBar.unselectedItemTintColor = .gray
        tabBar.layer.borderWidth = 1.0
        tabBar.layer.borderColor = UIColor.gray.cgColor
        tabBar.clipsToBounds = true
        tabBar.backgroundColor = .white
        tabBar.selectedImageTintColor = .blue
        for (_, viewController) in viewControllers!.enumerated() {
            if let tabBarItem = viewController.tabBarItem {
                tabBarItem.imageInsets = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
                tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 5)
            }
        }
    }
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - -

enum Tab {
    case create
    case batch
    case explore
    case discover
    case gallary
    
    // MARK: - index
    var index: Int {
        switch self {
        case .create: return 0
        case .batch: return 1
        case .explore: return 2
        case .discover: return 3
        case .gallary: return 4
        }
    }
    
    // MARK: - title
    var title: String {
        switch self {
        case .create: return .create
        case .batch: return .batch
        case .explore: return .explore
        case .discover: return .discover
        case .gallary: return .gallary
        }
    }
    
    // MARK: - image
    var image: UIImage {
        switch self {
        case .create: return .create
        case .batch: return .batch
        case .explore: return .explore
        case .discover: return .discover
        case .gallary: return .gallary
        }
    }
    
    // MARK: - selectedImage
    var selectedImage: UIImage {
        switch self {
        case .create: return .create
        case .batch: return .batch
        case .explore: return .explore
        case .discover: return .discover
        case .gallary: return .gallary
        }
    }
    
    // MARK: - viewControllers
    var viewControllers: [UIViewController] {
        let createVC = createViewController(type: Create.self, title: .create, image: .create, selectedImage: .create)
        let batchVC = createViewController(type: Batch.self, title: .batch, image: .batch, selectedImage: .batch)
        let exploreVC = createViewController(type: Explore.self, title: .explore, image: .explore, selectedImage: .explore)
        let discoverVC = createViewController(type: Discover.self, title: .discover, image: .discover, selectedImage: .discover)
        let gallaryVC = createViewController(type: Gallary.self, title: .gallary, image: .gallary, selectedImage: .gallary)
        
        return [createVC, batchVC, exploreVC, discoverVC, gallaryVC]
    }
    
    /// function to create viewController
    private func createViewController<T: UIViewController>(type: T.Type, title: String, image: UIImage, selectedImage: UIImage) -> UIViewController {
        let viewController = type.init()
        viewController.title = title
        viewController.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: selectedImage)
        return viewController
    }
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

// MARK: - Home
class Create: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
//        let view = HomeRouterInput().getView(entryEntity: HomeEntryEntity())
//        self.embed(view, inView: self.view)
        
        self.view.backgroundColor = .green
    }
}

// MARK: - Batch
class Batch: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
       // self.view.backgroundColor = .systemPink
        // Instantiate the ViewController from the storyboard
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as? UIViewController {
            // Call your embed function to add it as a child view controller
            self.embed(viewController, inView: self.view)
        }
    }
}

// MARK: - Explore
class Explore: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
    }
}

// MARK: - Discover
class Discover: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
    }
}


// MARK: - Gallary
class Gallary: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    }
}


// MARK: - UIViewController Extension
extension UIViewController {
    func embed(_ viewController: UIViewController, inView view: UIView) {
        viewController.willMove(toParent: self)
        viewController.view.frame = view.bounds
        view.addSubview(viewController.view)
        self.addChild(viewController)
        viewController.didMove(toParent: self)
    }
}
