import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Início")
                }
            AreaConsultaView()
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
    ContentView()
}
