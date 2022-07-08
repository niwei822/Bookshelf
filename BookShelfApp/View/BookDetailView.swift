//
//  BookDetailView.swift
//  BookShelfApp
//
//  Created by cecily li on 7/7/22.
//

import SwiftUI

struct BookDetailView: View {
    
    @Binding var book: Book
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 0) {
                Image(book.coverArt)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                    .padding(.all, 24)
                
                Text(book.title)
                  .multilineTextAlignment(.center)
                  .padding(.bottom, 16)

                Text(book.author)
                  .padding(.bottom, 24)
                
                Text("Description")
                ScrollView(showsIndicators: false) {
                Text(book.description)
                }
              }
              Spacer()
            }
      }
    }
  
        

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: .constant(
    Book(title: "The 10X Rule: The Only Difference Between Success and Failure", author: "Grant Cardone", coverArt: "10x", releaseYear: "2011", description: " Achieve Massive Actionresults and accomplish your business dreams!")))
    }
}

