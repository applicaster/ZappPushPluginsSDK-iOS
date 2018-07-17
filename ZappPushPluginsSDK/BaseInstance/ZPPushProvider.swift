//
//  ZPPushProvider.swift
//  ZappPlugins
//
//  Created by Miri on 23/11/2016.
//
//

import UIKit

@objc open class ZPPushProvider : NSObject, ZPPushProviderProtocol {
    open var providerProperties: [String:NSObject]!
    open var baseProperties: [String:NSObject] = [String:NSObject]()
    
    open var configurationJSON:NSDictionary?
    open var providerKey:String {
        get {
            return self.getKey()
        }
    }
    public required init(configurationJSON:NSDictionary?) {
        super.init()
        self.configurationJSON = configurationJSON
    }
    
    public required override init() {
        super.init()
    }
    
    open func getKey() -> String {
        //implement in child classes
        return ""
    }
    
    open func setBaseParameter(_ value:NSObject?, forKey key:String) {
        if let value = value {
            self.baseProperties[key] = value
        }
    }
    
    open func configureProvider() -> Bool {
        //implement in child classes
        return false
    }

}
