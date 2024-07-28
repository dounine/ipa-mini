//
//  FloatBtn.swift
//  IpaMiniFramework
//
//  Created by lake on 2024/7/28.
//
import SwiftLoad
import SwiftUI
import UIKit

@objc public class RootBtn: NSObject {}
extension RootBtn: NSSwiftLoadProtocol {
    public static func swiftInitialize() {
//        print("initialize")
    }

    public static func swiftLoad() {
//        print("注入加载")
//        let ff = FF()
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()) {
//            FF().show()
//            RootMoveableBtn.show()
//        }
    }
}

struct RootMoveableBtn: View {
    static var btnGView: UIView?
    static func show() {
        let window = UIApplication.shared.windows.last! // 查找顶层window窗口
        let btnView = RootMoveableBtn()
        let hosting = UIHostingController(rootView: btnView) // 把swift view包装成UIKit
        let uikitView = hosting.view!
//        uikitView.backgroundColor = .blue
        uikitView.translatesAutoresizingMaskIntoConstraints = false
        uikitView.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        window.addSubview(uikitView) // 添加view到顶层窗口上显示
//        uikitView.constraints = (235 / 375.0) * UIScreen.mainScreen.bounds.size.width
//        let constraint = NSLayoutConstraint(item: uikitView, attribute: .leading, relatedBy: .equal, toItem: uikitView, attribute: .leading, multiplier: 1.0, constant: 100)
        NSLayoutConstraint.activate([ // 添加约束
            uikitView.centerXAnchor.constraint(equalTo: window.centerXAnchor),
            uikitView.centerYAnchor.constraint(equalTo: window.centerYAnchor)
        ])
//        uikitView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 150, leading: 50, bottom: 50, trailing: 50)
//        uikitView.addConstraint(constraint)
//        uikitView.bounds.insetBy(dx: 100, dy: 100)
//        constraint.constant = 200
//        uikitView.layoutIfNeeded()
//        btnGView = uikitView
//        uikitView.heightAnchor.constraint(equalToConstant: 200).isActive = true
//        uikitView.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        hosting.didMove(toParent: window.rootViewController) // 移动
    }

//    @State var position = CGPoint(x: 0, y: 0)

    var body: some View {
//        VStack {
        Button {
            print("click")
        } label: {
            Image(systemName: "app")
                .font(.largeTitle)
//                .gesture(DragGesture().onChanged { value in
//                    print(value.location)
//                    //                RootMoveableBtn.btnGView!.bounds.offset(dx: value.location.x, dy: value.location.y)
//                    //                self.position = value.location
//                })
        }
//                .position(position)
//        }
//        .shadow(color: .blue, radius: 10.0)
//        .padding()
//        .cornerRadius(20)
    }
}

// #Preview {
//    FlatBtnView()
// }
