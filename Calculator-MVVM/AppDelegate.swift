//
//  AppDelegate.swift
//  Calculator-MVVM
//
//  Created by ineta.magone on 11/02/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    

    // MARK: UISceneSession Lifecycle

//    var window: UIWindow?
//    let storyBoard = UIStoryboard(name: "Main", bundle: nil)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

//        self.window = UIWindow(frame: UIScreen.main.bounds)
//        self.window?.makeKeyAndVisible()
//
//        let mainViewController = storyBoard.instantiateViewController(withIdentifier: "mainVc") as! MainViewController
//        let mainViewModel = MainViewModel()
//        mainViewController.configure(viewModel: mainViewModel)

//        let settingsViewController = storyBoard.instantiateViewController(withIdentifier: "settingsVc") as! SettingsViewController
//        let navigationController = UINavigationController(rootViewController: settingsViewController)
//        let settingsViewModel = SettingsViewModel()
//
//        settingsViewModel.onOpenMainViewController = { [weak self] in navigationController.pushViewController(mainViewController, animated: true)
//        }
//
//        settingsViewController.configure(viewModel: settingsViewModel)

//       self.window?.rootViewController = navigationController
        
        return true
    }
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

