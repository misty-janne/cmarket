package kr.co.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.domain.BoardDTO;
import kr.co.domain.PageDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
  @Inject
  private SqlSession session;

  private final String NS = "b.o.a";

  @Override
  public void insert(BoardDTO bDto) {
    Integer bno = session.selectOne("getBno");
    if (bno == null) {
      bno = 1;
    } else {
      bno += 1;
    }
    bDto.setBno(bno);
    session.insert(NS + ".insert", bDto);
  }

  @Override
  public List<BoardDTO> list() {
    return session.selectList(NS + ".list");
  }

  @Override
  public PageDTO<BoardDTO> list(PageDTO<BoardDTO> pDto) {
    RowBounds rowBounds = new RowBounds(pDto.getStartNum() - 1, pDto.getPerPage());

    List<BoardDTO> list = session.selectList(NS + ".list", null, rowBounds);
    pDto.setList(list);

    Integer amount = session.selectOne(NS + ".getAmount");
    if (amount != null) {
      pDto.setAmount(amount);
    } else {
      pDto.setAmount(0);
    }

    return pDto;
  }

  @Override
  public BoardDTO read(int bno) {
    return session.selectOne(NS + ".read", bno);
  }

  @Override
  public BoardDTO updateUI(int bno) {
    return session.selectOne(NS + ".updateUI", bno);
  }

  @Override
  public void update(BoardDTO bDto) {
    session.update(NS + ".update", bDto);
  }

  @Override
  public void delete(int bno) {
    session.delete(NS + ".delete", bno);
  }

}
