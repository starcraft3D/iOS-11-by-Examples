//
//  DataSource.swift
//  iOS-11-by-Examples
//
//  Created by PowerMobile Team on 17/06/2017.
//  Copyright Β© 2017 PowerMobile Team. All rights reserved.
//

import UIKit

struct Example {
    let title: String
    let description: String
    let storyboardName: String
    let controllerID: String?
    
    init(title: String, description: String, storyboardName: String, controllerID: String? = nil) {
        self.title = title
        self.description = description
        self.storyboardName = storyboardName
        self.controllerID = controllerID
    }
    
    var controller: UIViewController? {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let viewController: UIViewController?
        if let controllerID = controllerID {
            viewController = storyboard.instantiateViewController(withIdentifier: controllerID)
        }
        else {
            viewController = storyboard.instantiateInitialViewController()
        }
        viewController?.title = title
        return viewController
    }
}

struct DataSource {
    lazy var examples: [Example] = [Example(title: "π€ Core ML",
                                            description: "Object classification using Core ML framework",
                                            storyboardName: "CoreML"),
                                    Example(title: "π Vision",
                                            description: "Face detection using Vision framework",
                                            storyboardName: "Vision"),
                                    Example(title: "π ARKit",
                                            description: "Augmented reality experiences in your app or game",
                                            storyboardName: "ARKit"),
                                    Example(title: "πDrag And Drop",
                                            description: "Easy way to move content",
                                            storyboardName: "DragAndDrop"),
                                    Example(title: "πΊ MapKit",
                                            description: "Clustering and new annotation views",
                                            storyboardName: "MapKit"),
                                    Example(title: "βοΈ IdentityLookup",
                                            description: "Filter unwanted SMS and MMS messages",
                                            storyboardName: "IdentityLookup"),
                                    Example(title: "π? SpriteKit",
                                            description: "Attributed text for SKLabelNode and SKTransformNode",
                                            storyboardName: "SpriteKit")]
}
