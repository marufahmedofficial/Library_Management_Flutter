import 'package:flutter/material.dart';

import '../db/db_helper.dart';
import '../models/book_comment.dart';

class CommentProvider extends ChangeNotifier{
  Future<int> insertRating(BookComment bookComment) {
    return DbHelper.insertComment(bookComment);
  }
  Future<List<BookComment>> getCommentsByUserId(int id) =>
      DbHelper.getCommentsByUserId(id);
}