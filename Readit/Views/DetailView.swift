//
//  DetailView.swift
//  Readit
//
//  Created by Sri Harsha on 16/02/20.
//  Copyright © 2020 Sri Harsha. All rights reserved.
//

import SwiftUI
import WebKit

@available(iOS 13.0.0, *)
struct DetailView: View {
    let url :String?
    @available(iOS 13.0, *)
    var body: some View {
        WebView(urlString: url)
    }
}

@available(iOS 13.0.0, *)
@available(iOS 13.0.0, *)
@available(iOS 13.0.0, *)
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

struct WebView:UIViewRepresentable {
    let urlString:String?
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
