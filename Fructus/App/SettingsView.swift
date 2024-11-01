//
//  SettingsView.swift
//  Fructus
//
//  Created by Alessio Toma on 30/10/24.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    GroupBox(
                        label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are natuarally low in fat, sodium, and calories. None have choresterol. Fruits are sources of many essential nutrients, including potassium, dietary, fiber, vitamins, and mush more.")
                                .font(.footnote)
                        }
                    }
                }
                
                GroupBox(
                    label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                ){
                    Divider().padding(.vertical, 4)
                    
                    Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                        .padding(.vertical, 8)
                        .frame(minHeight: 60)
                        .layoutPriority(1)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    Toggle(isOn: $isOnboarding){
                        if isOnboarding{
                            Text("Restarted".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }else{
                            Text("Restart".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(.secondary)
                        }
                    }.padding()
                    .background(
                        Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                    )
                    
                }
                
                GroupBox(
                    label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                ){
                    SettingsRowView(name: "Developer", content: "John / Jane")
                    SettingsRowView(name: "Designer", content: "Robert Petras")
                    SettingsRowView(name: "Compatibility", content: "iOS 14")
                    SettingsRowView(name: "Website", linkLabel: "SwiftUi Masterclass", linkDestination: "swiftuimasterclass.com")
                    SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                    SettingsRowView(name: "SwiftUI", content: "2.0")
                    SettingsRowView(name: "Version", content: "1.1.0")
                }
                
            }
            .navigationTitle("Settings").navigationBarTitleDisplayMode(.large)
            .navigationBarItems(
                trailing:
                    Button(action: {presentationMode.wrappedValue.dismiss()}){
                        Image(systemName: "xmark")
                    }
            )
            .padding()
        }
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
