package kr.co.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.MemberDTO;
import kr.co.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@Inject
	private MemberService mService;
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") String id) {
		mService.delete(id);
		return "redirect:/member/list";
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(MemberDTO dto) {
		mService.update(dto);
		return "redirect:/member/list";
	}
	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String updateui(@PathVariable("id") String id, Model model) {
		MemberDTO dto = mService.updateui(id);
		model.addAttribute("dto", dto);
		return "member/update";
	}
	@RequestMapping(value = "/read/{id}", method = RequestMethod.GET)
	public String read(@PathVariable("id") String id, Model model) {
		MemberDTO dto = mService.read(id);
		model.addAttribute("dto", dto);
		return "member/read";
	}
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(Model model) {
		List<MemberDTO> list = mService.list();
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(MemberDTO dto) {
		mService.insert(dto);
		return "redirect:/member/list";
	}
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert() {
		return "member/insert";
	}
}
