import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            ConsultasView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Consultas")
                }
            NoticiasView()
                .tabItem {
                    Image(systemName: "megaphone")
                    Text("Noticias")
                }
            PerfilView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Perfil")
                }
        }
    }
}

#Preview {
    MainView()
}
