
import SwiftUI

struct NoticiasView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                
                HStack {
                    Circle()
                        .frame(width: 8, height: 8)
                    Text("Últimas notícias")
                        .font(.headline)
                        .bold()
                }
                .padding(.top, 10)
                .padding(.leading, 16)
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        
                        NoticiaItemView(
                            imagemNome: "Vacina",
                            titulo: "Aumento nos casos de covid-19",
                            descricao: "O Brasil enfrenta mais uma onda de variantes do vírus da covid-19: os casos da doença registraram um aumento de 70% em apenas uma semana.",
                            tempo: "2 horas atrás",
                            fonte: "Fonte"
                        )
                        .frame(maxWidth: .infinity)
                        
                        NoticiaItemView(
                            imagemNome: "Dentista",
                            titulo: "Vagas para dentistas abertas!",
                            descricao: "Processo seletivo aberto no Mais Saúde Clínica Médica",
                            tempo: "8 horas atrás",
                            fonte: "Fonte"
                        )
                        .frame(maxWidth: .infinity)
                        
                        NoticiaItemSimplesView(
                            titulo: "Abril azul. Mês de debate conscientização sobre o Autismo!",
                            fonte: "Lide",
                            tempo: "2 dias atrás",
                            fonteNoticia: "Fonte"
                        )
                        .frame(maxWidth: .infinity)
                    }
                    .padding(.horizontal, 16)
                    .padding(.bottom, 20)
                }
            }
            .padding(.bottom, 10)
            .navigationTitle("Noticias")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NoticiasView()
}
