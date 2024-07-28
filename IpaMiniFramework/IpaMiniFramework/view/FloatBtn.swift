//
//  FloatBtn.swift
//  IpaMiniFramework
//
//  Created by lake on 2024/7/28.
//
import SwiftLoad

@objc public class FloatBtn: NSObject {}

extension FloatBtn: NSSwiftLoadProtocol {
    public static func swiftInitialize() {
        print("initialize")
    }

    public static func swiftLoad() {
        print("注入加载")
    }
}
