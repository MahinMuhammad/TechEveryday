//
//  DetailView.swift
//  TechEveryday
//
//  Created by Md. Mahinur Rahman on 5/7/23.
//

import SwiftUI

struct DetailView: View {
    
    let url:String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://mahinmuhammad.github.io/view/home.html")
    }
}
