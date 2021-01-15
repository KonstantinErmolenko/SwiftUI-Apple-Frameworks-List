//
//  AFButton.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Ермоленко Константин on 14.01.2021.
//

import SwiftUI

struct AFButton: View {
  
  let title: String
  
  var body: some View {
    Text(title)
      .font(.title2)
      .fontWeight(.semibold)
      .frame(width: 280, height: 50)
      .background(Color.red)
      .foregroundColor(.white)
      .cornerRadius(10)
  }
}

struct AFButton_Previews: PreviewProvider {
  static var previews: some View {
    AFButton(title: "Learn More")
  }
}
