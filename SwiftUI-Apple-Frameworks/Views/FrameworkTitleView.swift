//
//  FrameworkTitleView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Ермоленко Константин on 15.01.2021.
//

import SwiftUI

struct FrameworkTitleView: View {
  
  let framework: Framework
  
  var body: some View {
    HStack {
      Image(framework.imageName)
        .resizable()
        .frame(width: 75, height: 75)
      Text(framework.name)
        .font(.title2)
        .fontWeight(.semibold)
        .scaledToFit()
        .minimumScaleFactor(0.6)
        .padding()
    }
  }
}
struct FrameworkTitleView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkTitleView(framework: MockData.sampleFramework)
  }
}
