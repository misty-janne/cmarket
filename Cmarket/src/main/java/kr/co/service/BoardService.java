package kr.co.service;

import java.util.List;

import kr.co.domain.BoardDTO;
import kr.co.domain.PageDTO;

public interface BoardService {

  void insert(BoardDTO bDto);

  List<BoardDTO> list();

  PageDTO<BoardDTO> list(PageDTO<BoardDTO> pDto);

  BoardDTO read(int bno);

  BoardDTO updateUI(int bno);

  void update(BoardDTO bDto);

  void delete(int bno);

}
