//
//  SceneDelegate.swift
//  NewsApp
//
//  Created by Evgenii Mikhailov on 15.02.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    private var appCoordinator: AppCoordinator?
    private lazy var appDependency: AppDependency = AppDependency.makeDefault()
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        guard let window = window else { return }
        window.windowScene = windowScene
        appCoordinator = AppCoordinator(window: window, appDependency: appDependency)
        appCoordinator?.start()
    }
}

