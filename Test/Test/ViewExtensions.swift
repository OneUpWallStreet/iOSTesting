//
//  ViewExtensions.swift
//  Test
//
//  Created by Arteezy on 4/18/22.
//


import Foundation
import SwiftUI
import UIKit


extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
