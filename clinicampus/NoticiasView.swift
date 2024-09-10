//
//  ConsultasView.swift
//  CliniCampus
//
//  Created by found on 09/08/24.
//
        
    import SwiftUI

    struct NoticiasView: View {
        var body: some View {
            VStack(alignment: .leading) {
                    // Título da página
                Text("Notícias")
                        .font(.title)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.top, 20)
                    
                    // Seção de "Últimas notícias"
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
                            // Primeira notícia
                        NoticiaItemView(
                            imagemNome: "Vacina",
                            titulo: "Aumento nos casos de covid-19",
                            descricao: "O Brasil enfrenta mais uma onda de variantes do vírus da covid-19: os casos da doença registraram um aumento de 70% em apenas uma semana.",
                            tempo: "2 horas atrás",
                            fonte: "Fonte"
                            )
                            
                            // Segunda notícia
                        NoticiaItemView(
                            imagemNome: "Dentista",
                            titulo: "Vagas para dentistas abertas!",
                            descricao: "Processo seletivo aberto no Mais Saúde Clínica Médica",
                            tempo: "8 horas atrás",
                            fonte: "Fonte"
                            )
                            
                            // Terceira notícia
                        NoticiaItemSimplesView(
                            titulo: "Abril azul. Mês de debate conscientização sobre o Autismo!",
                            fonte: "Lide",
                            tempo: "2 dias atrás",
                            fonteNoticia: "Fonte"
                            )
                        }
                        .padding(.horizontal, 16)
                        .padding(.bottom, 20)
                    }
                }
                .padding(.bottom, 10)
            }
        }

        struct NoticiaItemView: View {
            var imagemNome: String
            var titulo: String
            var descricao: String
            var tempo: String
            var fonte: String
            
            var body: some View {
                VStack(alignment: .leading, spacing: 8) {
                    Image(imagemNome)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 120)
                        .cornerRadius(10)
                    
                    Text(titulo)
                        .font(.headline)
                        .bold()
                    
                    Text(descricao)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    HStack {
                        Text(tempo)
                            .font(.footnote)
                            .foregroundColor(.gray)
                        Text("|")
                            .font(.footnote)
                            .foregroundColor(.gray)
                        Text(fonte)
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
            }
        }

        struct NoticiaItemSimplesView: View {
            var titulo: String
            var fonte: String
            var tempo: String
            var fonteNoticia: String
            
            var body: some View {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Circle()
                            .frame(width: 8, height: 8)
                        Text(titulo)
                            .font(.headline)
                            .bold()
                    }
                    
                    Text(fonte)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    HStack {
                        Text(tempo)
                            .font(.footnote)
                            .foregroundColor(.gray)
                        Text("|")
                            .font(.footnote)
                            .foregroundColor(.gray)
                        Text(fonteNoticia)
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
            }
        }

        #Preview {
            NoticiasView()
        }



