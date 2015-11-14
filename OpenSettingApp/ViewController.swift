//
//  ViewController.swift
//  OpenSettingApp
//
//  Created by 千葉 俊輝 on 2015/11/14.
//  Copyright © 2015年 Toshiki Chiba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func didPushOpenButton(sender: AnyObject) {
        /*
        一般 "prets:root=General"
        Wi-Fi "prefs:root=WIFI"
        ソフトウェアアップデート "prefs:root=General&path=SOFTWARE_UPDATE_LINK"
        プロファイル "prefs:root=General&path=ManagedConfigurationList"
        キーボード "prefs:root=General&path=Keyboard"
        位置情報 "prefs:root=LOCATION_SERVICES"
        通知 "prefs:root=NOTIFICATIONS_ID"
        TouchID "prefs:root=TOUCHID_PASSCODE"
        壁紙 "prefs:root=Wallpaper"
        */
        
        if let url = NSURL(string:"prefs:root=Safari&path=SEARCH_ENGINE_SETTING") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
}

