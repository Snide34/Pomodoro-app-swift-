import SwiftUI
import Foundation

let universityName : String = "Chandigarh University" //variable
let result : Int = 10
let result2 : Int = 70//int declaration
let result3 : Int = result2/result2

struct MainTabView: View {
    @State private var selectedTab = 0

    var body: some View {
        ScrollView {
            VStack(spacing: 0){
                Text(universityName)
                    .padding(5)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .frame(width: 200, height: 50, alignment: .init(horizontal: .center, vertical: .top,))
                    .padding(.top, 35)
                ProfileIcon()
                Text("Software Developer")
                    .padding()
                    .font(Font.body.bold())
                    .foregroundColor(.secondary)
                CardBoxView()
                CardBoxView2()
                CardBoxView3()
                CardBoxView7()
                CardBoxView4()
                CardBoxView5()
                CardBoxView6()
            }
            .frame(maxWidth: .infinity, alignment: .top)
            .padding(.vertical)
        }
        TabView(selection: $selectedTab){
            HomeView(){
                .tabItem{
                    Label("Home", systemImage: "House.Fill")
                }
                .tag0
            }
        }
        .background(Color.red.opacity(1))
        .ignoresSafeArea()
    }
}
struct ProfileIcon: View {
    var body: some View {
                Circle()
                    .fill(Color.blue.opacity(0.2))
                    .frame(width: 80, height: 80)
                    .overlay(
                        Image(systemName: "person.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 44, height: 44)
                            .foregroundStyle(.primary)
                    )
                    .overlay(Circle().stroke(Color.blue, lineWidth: 2))
                    .shadow(radius: 4)
            }
        }
struct CardBoxView: View {
    @State private var isHovering = true
    var body: some View {
        GroupBox(label: Text("BIO:").bold()) {
            Text("Mobile App Developer. Loves to code and play valorant with a cold coffee.")
                .padding(1)
                .frame(maxWidth: .infinity, alignment: .init(horizontal: .leading, vertical: .top))
                .background(isHovering ? Color.blue.opacity(0.15) : Color.clear)
                .foregroundStyle(isHovering ? Color.blue : Color.primary)
                .cornerRadius(10)
                .shadow(color: Color.green.opacity(100), radius: (20))
                .onHover { hovering in
                    isHovering = hovering
                }
                .hoverEffect(.highlight)
        }
        .padding()
    }
}

struct CardBoxView2: View {
    var body: some View {
        GroupBox(label: Text("").bold()) {
            Text("Name:Khyat Ghosh")
                .frame(maxWidth: .infinity, alignment: .init(horizontal: .leading, vertical: .top))
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(1.5), radius: (20))
        }
        .padding()
    }
}
struct CardBoxView7: View{
    var body: some View {
        GroupBox(label: Text("").bold()) {
            
            Text("24BCS10405")
                .frame(maxWidth: .infinity,alignment: .init(horizontal: .leading,vertical:.top))
                .fontWeight(.bold)
        }
        .padding()
    }
}
struct CardBoxView3: View {
    var body: some View {
        GroupBox(label: Text("").bold()) {
            Text("Sec: APP-707")
                .frame(maxWidth: .infinity, alignment: .init(horizontal: .leading, vertical: .top))
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(1.5), radius: (20))
        }
        .padding()
    }
}
struct CardBoxView4: View {
    var body: some View {
        GroupBox(label: Text("").bold()) {
            Text("Email: 24bcs10405@cuchd.in")
                .frame(maxWidth: .infinity, alignment: .init(horizontal: .leading, vertical: .top))
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(2.5), radius: (20))
        }
        .padding()
    }
}
struct CardBoxView5: View {
    var body: some View {
        GroupBox(label: Text("").bold()) {
            Text("mobile:999999999")
                .frame(maxWidth: .infinity, alignment: .init(horizontal: .leading, vertical: .top))
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(1.5), radius: (20))
        }
        .padding()
    }
}
struct CardBoxView6: View {
    var body: some View {
        GroupBox(label: Text("git").bold()) {
            Text("github:Snide34")
                .frame(maxWidth: .infinity, alignment: .init(horizontal: .leading, vertical: .top))
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(1.5), radius: (20))
        }
        .padding()
    }
}

