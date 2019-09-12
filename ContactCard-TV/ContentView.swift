//
//  ContentView.swift
//  ContactCard
//
//  Created by Grant Isom on 9/11/19.
//  Copyright © 2019 Grant Isom. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var emailAddress = "grant@cerner.com"
    @State private var phoneNumber = "918-691-9891"
    @State private var company = "Cerner"
    @State private var department = "Strategic Growth"
    
    var body: some View {
        VStack {
            Image("background")
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            HStack(alignment: .bottom) {
                Image("profile")
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 5))
                VStack(alignment: .leading) {
                    Text("Grant Isom")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    Text("Software Engineer")
                        .font(.title)
                }
            }
            .offset(y: -200)
            .padding()
            List {
                Section(header: Text("Contact Info")) {
                    HStack {
                        Image(systemName: "envelope")
                        Text("Email Address").bold()
                        Divider()
                        TextField("johnnyappleseed@apple.com", text: $emailAddress)
                            .textFieldStyle(DefaultTextFieldStyle())
                    }
                    HStack {
                        Image(systemName: "phone")
                        Text("Phone Number").bold()
                        Divider()
                        TextField("123-456-7890", text: $phoneNumber)
                            .textFieldStyle(DefaultTextFieldStyle())
                    }
                    HStack {
                        Image(systemName: "bolt")
                        Text("Company").bold()
                        Divider()
                        TextField("ABC Corporation", text: $company)
                            .textFieldStyle(DefaultTextFieldStyle())
                    }
                    HStack {
                        Image(systemName: "doc.append")
                        Text("Department").bold()
                        Divider()
                        TextField("Engineering", text: $department)
                            .textFieldStyle(DefaultTextFieldStyle())
                    }
                }
            }
            .padding()
            .offset(y: -200)
            .listStyle(GroupedListStyle())
        }
        .background(Color("groupedList"))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class Refresher {
@objc class func injected() {
    UIApplication.shared.windows.first?.rootViewController =
UIHostingController(rootView: ContentView())
  }
}
