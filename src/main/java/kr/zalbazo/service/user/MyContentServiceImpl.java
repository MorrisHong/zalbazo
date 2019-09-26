package kr.zalbazo.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.zalbazo.mapper.user.mypage.MyContentMapper;
import kr.zalbazo.model.content.Content;
import kr.zalbazo.model.content.ReplyVO;
import kr.zalbazo.model.hospital.HospitalQnaVO;
import kr.zalbazo.model.hospital.HospitalReviewVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MyContentServiceImpl implements MyContentService{

	@Setter(onMethod_ = @Autowired)
	private MyContentMapper myContentMapper;
	
	@Override
	public List<Content> getCommunityList(String userEmail) {
		return myContentMapper.getCommunityList(userEmail);
	}

	@Override
	public List<Content> getJisikdongList(String userEmail) {
		return myContentMapper.getJisikdongList(userEmail);
	}

	@Override
	public List<HospitalReviewVO> getReviewList(String userEmail) {
		return myContentMapper.getReviewList(userEmail);
	}

	@Override
	public List<HospitalQnaVO> getQList(String userEmail) {
		return myContentMapper.getQList(userEmail);
	}

	@Override
	public List<HospitalQnaVO> getAList(Long contentId) {
		return myContentMapper.getAList(contentId);
	}

	@Override
	public List<ReplyVO> getReplyList(String userEmail) {
		return myContentMapper.getReplyList(userEmail);
	}

}
