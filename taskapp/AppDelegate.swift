//
//  AppDelegate.swift
//  taskapp
//
//  Created by 杉田優衣 on 2022/05/17.
//

import UIKit
import UserNotifications    // 追加

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // ユーザに通知の許可を求める --- ここから ---
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            // Enable or disable features based on authorization
        } // --- ここまで追加 ---
        return true
    }
}
