package com.bitcamp.board.dao;

import java.util.List;
import java.util.Map;
import javax.xml.stream.events.Comment;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardCommentDao {

  //  List<Map<String, Object>> findAll(int boardNo);

  int insertComment(Comment comment);

  List<Comment> findByBoardNo(Map<String, Object> map);

  Comment findCommentByNo(int commentNo);

  int deleteComment(int boardNo);

  int updateComment(Comment comment);

  int findCommentsCount(int boardNo);

  int deleteAll(int boardNo);

  int findTotalCommentOfMember(int memberNo);

  List<Comment> findCommentsByMemberNo(Map<String, Object> paramMap);

}
