package com.bitcamp.board.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.Transactional;
import com.bitcamp.board.dao.BoardDao;
import com.bitcamp.board.domain.AttachedFile;
import com.bitcamp.board.domain.Board;

@Service // 서비스 역할을 수행하는 객체에 붙이는 애노테이션
public class DefaultBoardService implements BoardService {

  @Autowired 
  PlatformTransactionManager txManager; 
  @Autowired 
  //@Qualifier("mybatisBoardDao") 
  BoardDao boardDao;
  @Transactional
  @Override
  public void add(Board board) throws Exception {
    // 1) 게시글 등록
    if (boardDao.insert(board) == 0) {
      throw new Exception("게시글 등록 실패!");
    }
    // 2) 첨부파일 등록
    if (board.getAttachedFiles().size() > 0) {
      boardDao.insertFiles(board);
    }
  }
  @Transactional
  @Override
  public boolean update(Board board) throws Exception {
    // 1) 게시글 변경
    if (boardDao.update(board) == 0) {
      return false;
    }
    if (board.getAttachedFiles().size() > 0) {
      boardDao.insertFiles(board);
    }
    return true;
  }

  @Override
  public Board get(int no) throws Exception {
    // 이 메서드의 경우 하는 일이 없다.
    // 그럼에도 불구하고 이렇게 하는 이유는 일관성을 위해서다.
    // 즉 Controller는 Service 객체를 사용하고 Service 객체는 DAO를 사용하는 형식을 
    // 지키기 위함이다.
    // 사용 규칙이 동일하면 프로그래밍을 이해하기 쉬워진다.
    // 방법1: select를 두 번 실행한다.
    //   return boardDao.findByNo1(no);

    // 방법2: 아예 따로 만든다.
    //    Board board = boardDao.findByNo2(no);
    //    List<AttachedFile> attachedFiles = boardDao.findFilesByBoard(no);
    //    board.setAttachedFiles(attachedFiles);
    //    return board;

    //방법 3: 첨부파일 데이터까지 조인하여 select를 한 번만 실행한다.
    return boardDao.findByNo(no);

  }
  @Transactional
  @Override
  public boolean delete(int no) throws Exception {
    // 1) 첨부파일 삭제
    boardDao.deleteFiles(no);
    // 2) 게시글 삭제
    return boardDao.delete(no) > 0;
  }

  @Override
  public List<Board> list() throws Exception {
    return boardDao.findAll();
  }

  @Override
  public AttachedFile getAttachedFile(int fileNo) throws Exception {
    return boardDao.findFileByNo(fileNo);
  }

  @Override
  public boolean deleteAttachedFile(int fileNo) throws Exception {
    return boardDao.deleteFile(fileNo) > 0;
  }

}








