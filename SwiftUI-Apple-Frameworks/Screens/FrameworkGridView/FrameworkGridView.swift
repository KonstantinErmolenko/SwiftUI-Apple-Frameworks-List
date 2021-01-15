//
//  FrameworkGridView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Ермоленко Константин on 14.01.2021.
//

import SwiftUI

struct FrameworkGridView: View {
  
  @StateObject var viewModel = FrameworkGridViewModel()
  
  var body: some View {
    NavigationView {
      List {
        ForEach(MockData.frameworks) { framework in
          NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
            FrameworkTitleView(framework: framework)
          }
        }
      }
      .navigationTitle("🍎 Frameworks")
    }
    .accentColor(Color(.label))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkGridView()
      .preferredColorScheme(.dark)
  }
}
