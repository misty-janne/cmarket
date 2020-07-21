package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.domain.BoardDTO;
import kr.co.domain.PageDTO;
import kr.co.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

  @Inject
  private BoardDAO bDao;

  @Override
  public void insert(BoardDTO bDto) {
    bDao.insert(bDto);

  }

  @Override
  public List<BoardDTO> list() {
    return bDao.list();
  }

  @Override
  public PageDTO<BoardDTO> list(PageDTO<BoardDTO> pDto) {
    return bDao.list(pDto);
  }

  @Override
  public BoardDTO read(int bno) {
    return bDao.read(bno);
  }

  @Override
  public BoardDTO updateUI(int bno) {
    return bDao.updateUI(bno);
  }

  @Override
  public void update(BoardDTO bDto) {
    bDao.update(bDto);
  }

  @Override
  public void delete(int bno) {
    bDao.delete(bno);
  }

}
