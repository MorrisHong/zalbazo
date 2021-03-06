package kr.zalbazo.controller.hospital;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.zalbazo.model.hospital.HospitalReviewVO;
import kr.zalbazo.service.hospital.HospitalReviewService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/reviews/")
@RestController
@Log4j
@AllArgsConstructor
public class ReviewController {
	
	private HospitalReviewService reviewService;
	
	// 병원별 리뷰 리스트
	@GetMapping(value = "/list/{hospitalId}", produces = { 
			MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<HospitalReviewVO>> getReviewList(@PathVariable("hospitalId") Long hospitalId) {
		return new ResponseEntity<>(reviewService.getReviewList(hospitalId), HttpStatus.OK);
	}
	
	// 병원별 리뷰 평점
	@GetMapping(value= "/{hospitalId}", produces = {
			MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity <Double> get(@PathVariable("hospitalId") Long hospitalId) {
		return new ResponseEntity<>(reviewService.get(hospitalId), HttpStatus.OK);
	}
	
	// 병원별 리뷰 개수
	@GetMapping(value= "/total/{hospitalId}", produces = {
			MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity <Integer> getTotal(@PathVariable("hospitalId") Long hospitalId) {
		return new ResponseEntity<>(reviewService.getTotal(hospitalId), HttpStatus.OK);
	}
	
	

}
