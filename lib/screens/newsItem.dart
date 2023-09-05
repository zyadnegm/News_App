import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/model/NewsDataResponse.dart';

class NewsItem extends StatelessWidget {
  Articles articles;

  NewsItem(this.articles);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              child: Image.network(
                articles.urlToImage ?? "",
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18), topLeft: Radius.circular(18)),
            ),
            Text(
              articles.title ?? "",
              style: GoogleFonts.aBeeZee(
                  fontSize: 18, fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              articles.description ?? "",
              style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w500, fontSize: 14),
              maxLines: 2,
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Text(
                  articles.author ?? "",
                  style: GoogleFonts.elMessiri(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Spacer(),
                Text(articles.publishedAt!.substring(0, 10) ?? "",
                    style: GoogleFonts.elMessiri(
                        fontWeight: FontWeight.bold, fontSize: 15)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
