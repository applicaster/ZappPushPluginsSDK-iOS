//
//  ZPPushNotificationManager.swift
//  ZappPlugins
//
//  Created by Miri on 23/11/2016.
//

import UIKit
import ZappPlugins

@objc public class ZPPushNotificationManager: NSObject {
    @objc public static let sharedInstance = ZPPushNotificationManager()
	
	var providers: [ZPPushProviderProtocol] = []
    
    private override init() {
        //This prevents others from using the default '()' initializer for this class.
    }
    
    /**
     private method - Get providers types from Zapp
     */
    @objc public func getProviders() -> [ZPPushProviderProtocol] {
		if providers.count == 0 {
			//var providers = [ZPPushProviderProtocol]()
			let pluginModels = ZPPluginManager.pluginModels()?.filter { $0.pluginType == .Push }
			if let pluginModels = pluginModels  {
				for pluginModel in pluginModels {
					if let classType = ZPPluginManager.adapterClass(pluginModel) as? ZPPushProviderProtocol.Type {
						let provider = classType.init(configurationJSON: pluginModel.configurationJSON)
						providers.append(provider)
					}
				}
			}
		}
        return providers
    }
}
