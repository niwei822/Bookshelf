//
//  BookListView.swift
//  BookShelfApp
//
//  Created by cecily li on 7/7/22.
//

import SwiftUI

struct BookListView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                List(BooksData.books) {
                    book in
                    NavigationLink {
                        BookDetailView(book: .constant(book))
                    } label: {
                        BookLabelView (
                            BookName: book.title,
                            BookImage: book.coverArt,
                            BookAuthor: book.author
                        )
                        .navigationTitle("Book Shelf")
                        .listStyle(.plain)
                    }
                }
            }
        }
    }
}
struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}

struct BookLabelView: View {
    
    let BookName: String
    let BookImage: String
    let BookAuthor: String
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 0) {
                Image(BookImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                    .padding(.all, 24)
                
                Text(BookName)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 16)
                
                Text(BookAuthor)
                    .fontWeight(.semibold)
                    .padding(.bottom, 24)
            }
            Spacer()
        }
    }
}
