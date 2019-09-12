package kr.zalbazo.controller.hospital;

import kr.zalbazo.model.content.Content;
import kr.zalbazo.model.hospital.HospitalQna;
import kr.zalbazo.service.HospitalService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.zalbazo.model.content.Content;
import kr.zalbazo.model.hospital.HospitalQna;
import kr.zalbazo.service.HospitalService;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping({ "/hospital/*" })
public class HospitalController {
	
	@Autowired
	private HospitalService hospitalService;
	
	@GetMapping("/get")
	public void get(@RequestParam("hospitalId") Long hospitalId, Content content, Model model) {
		model.addAttribute("hospital", hospitalService.get(hospitalId));
		model.addAttribute("labelList", hospitalService.getLabelList(hospitalId));
		model.addAttribute("hPictureList", hospitalService.getPictureList(hospitalId));
		model.addAttribute("picCount", hospitalService.getPictureCount(hospitalId));
		model.addAttribute("content", content);
		model.addAttribute("qnaList", hospitalService.getHospitalQnaList(hospitalId));
	}
	
	@PostMapping("/get")
	public String get(HospitalQna hospitalQna, Content content, RedirectAttributes rttr) {
		hospitalService.hContentRegister(content);
		hospitalService.hQnaRegister(hospitalQna);
		rttr.addFlashAttribute("hospitalId", hospitalQna.getHospitalId());
		
		return "redirect:/hospital/get"; 

	}
	
//	@PostMapping("/write")
//	public String writeQna(@RequestParam("hospitalId") Long hospitalId, Content content) {
//		hospitalService.hContentRegister(content);
//		hospitalService.hQnaRegister(hospitalId);
//		
//		//rttr.addAttribute("content", content);
//		//rttr.addAttribute("hospitalQna", hospitalQna);
//		//rttr.addFlashAttribute("qna", hospitalService.getHospitalQnaList());
//		//log.info(hospitalService.getHospitalQnaList());
//		return "/hospital/write";
//	}

}
