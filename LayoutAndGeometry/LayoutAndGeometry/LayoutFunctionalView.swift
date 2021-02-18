//
//  LayoutFunctionalView.swift
//  LayoutAndGeometry
//
//  Created by Dave Spina on 2/17/21.
//

import SwiftUI

struct LayoutFunctionalView: View {
    var body: some View {
        // background is layout neutral
        // applying modifiers creates new views and builds
        // a layout hiearchy
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding(20)
            .background(Color.red)
    }
}

struct LayoutFunctionalView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutFunctionalView()
    }
}
