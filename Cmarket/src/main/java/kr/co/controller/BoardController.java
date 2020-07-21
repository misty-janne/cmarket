package kr.co.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.BoardDTO;
import kr.co.domain.PageDTO;
import kr.co.service.BoardService;

@Controller
@RequestMapping("board")
public class BoardController {

  @Inject
  private BoardService bService;

  @RequestMapping(value = "/insert", method = RequestMethod.GET)
  public void insert() {

  }

  @RequestMapping(value = "/insert", method = RequestMethod.POST)
  public String insert(BoardDTO bDto) {
    bService.insert(bDto);

    return "redirect:/board/list";
  }

  @RequestMapping(value = "/list", method = RequestMethod.GET)
  public void list(Model model, String curPage) {
    int page = -1;

    if (curPage == null) {
      page = 1;
    } else {
      page = Integer.parseInt(curPage);
    }

    PageDTO<BoardDTO> pDto = new PageDTO<BoardDTO>(page);

    pDto = bService.list(pDto);

    model.addAttribute("pDto", pDto);
    model.addAttribute("list", pDto.getList());
  }

  @RequestMapping(value = "/read/{bno}", method = RequestMethod.GET)
  public String read(Model model, @PathVariable("bno") int bno) {
    BoardDTO bDto = bService.read(bno);
    model.addAttribute("bDto", bDto);

    return "board/read";
  }

  @RequestMapping(value = "/update/{bno}", method = RequestMethod.GET)
  public String update(Model model, @PathVariable("bno") int bno) {

    BoardDTO bDto = bService.updateUI(bno);
    model.addAttribute("bDto", bDto);

    return "board/update";
  }

  @RequestMapping(value = "/update", method = RequestMethod.POST)
  public String update(BoardDTO bDto) {

    bService.update(bDto);
    return "redirect:/board/read/" + bDto.getBno();
  }

  @RequestMapping(value = "/delete/{bno}", method = RequestMethod.GET)
  public String delete(@PathVariable("bno") int bno) {
    bService.delete(bno);

    return "redirect:/board/list";
  }
}
