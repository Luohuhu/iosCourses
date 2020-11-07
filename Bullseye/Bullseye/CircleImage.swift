//
//  CircleImage.swift
//  Bullseye
//
//  Created by 罗贤甫 on 2020/10/28.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Doggie")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
