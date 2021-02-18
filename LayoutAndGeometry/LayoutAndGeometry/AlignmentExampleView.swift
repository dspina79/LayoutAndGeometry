//
//  AlignmentExampleView.swift
//  LayoutAndGeometry
//
//  Created by Dave Spina on 2/17/21.
//

import SwiftUI

struct AlignmentExampleView: View {
    var body: some View {
        VStack {
        VStack(alignment: .leading) {
            Text("May")
                .alignmentGuide(.leading) {
                    d in d[.trailing]
                }
            Text("The Force be with you")
        }
        .background(Color.red)
        .frame(width:300, height: 200)
        .background(Color.gray)
            VStack(alignment: .leading) {
                ForEach(0..<10) { i in
                    Text("Hello")
                        .alignmentGuide(.leading) { _ in
                            CGFloat(i) * -15
                        }
                }
            }
            .background(Color.green)
            .frame(width: 300, height: 300)
            .background(Color.orange)
        }
    }
}

struct AlignmentExampleView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentExampleView()
    }
}
