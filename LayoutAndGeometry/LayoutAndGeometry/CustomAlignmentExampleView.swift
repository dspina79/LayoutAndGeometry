//
//  CustomAlignmentExampleView.swift
//  LayoutAndGeometry
//
//  Created by Dave Spina on 2/17/21.
//

import SwiftUI

extension VerticalAlignment {
    // use enum to clearly identify that this is just used for name and
    // limited functionality
    enum MidAccountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[VerticalAlignment.center]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

extension HorizontalAlignment {
    enum CenterAccountName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[HorizontalAlignment.center]
        }
    }
    
    static let centerAccountName = HorizontalAlignment(CenterAccountName.self)
}

struct CustomAlignmentExampleView: View {
    var body: some View {
        VStack {
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("@davespina")
                    .alignmentGuide(.midAccountAndName) { d in
                        d[VerticalAlignment.center]
                    }
                Image("project18")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64)
            }
            VStack {
                Text("Status")
                Text("Active")
                Text("Full Name")
                    .bold()
                    .alignmentGuide(.midAccountAndName) { d in
                    d[VerticalAlignment.center]
                }
                Text("Dave Spina")
                    .font(.largeTitle)
            }
            Text("Hello!!")
        }
            VStack(alignment: .centerAccountName) {
                Text("Hello")
                Text("World")
                    .alignmentGuide(.centerAccountName) { d in
                        d[.trailing]
                    }
            }
        }
    }
}

struct CustomAlignmentExampleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlignmentExampleView()
    }
}
