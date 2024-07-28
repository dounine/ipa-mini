//
//  FloatBtn.swift
//  IpaMiniFramework
//
//  Created by lake on 2024/7/28.
//
import SwiftLoad
import SwiftUI
import UIKit

@objc public class FloatBtn: NSObject {}
// public class MyCustomView: UIView{
//    open class func show() -> UIView{
//
//        let bigView = FlatBtnView()
//
//        UIApplication.shared.keyWindow?.addSubview(bigView)
//
//        return bigView
//    }
//
// }

extension FloatBtn: NSSwiftLoadProtocol {
    public static func swiftInitialize() {
        print("initialize")
    }

    public static func swiftLoad() {
        print("注入加载")
        let ff = FF()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()) {
//            ff.show()
            FlatBtnView.show()
        }
//        let btn = FlatBtnView()
//        UIApplication.shared.keyWindow?.addSubview(btn)
//        UIApplication.shared.keyWindow{w in
//
//        }
    }
}

struct FlatBtnView: View {
    static func show() {
        let window = UIApplication.shared.windows.last!
//        let window = UIWindow(frame: UIScreen.main.bounds)
        let btnView = FlatBtnView()
        let hosting = UIHostingController(rootView: btnView)
        let uikitView = hosting.view!
        uikitView.translatesAutoresizingMaskIntoConstraints = false
        window.addSubview(uikitView)
        NSLayoutConstraint.activate([
            uikitView.centerXAnchor.constraint(equalTo: window.centerXAnchor),
            uikitView.centerYAnchor.constraint(equalTo: window.centerYAnchor),
        ])
        hosting.didMove(toParent: window.rootViewController)
    }

    var body: some View {
//        VStack {
            Button {
//                    let ff = FF()
            } label: {
                Image(systemName: "app")
                    .opacity(0.5)
            }
//        }
    }
}

// #Preview {
//    FlatBtnView()
// }
