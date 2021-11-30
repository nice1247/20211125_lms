package co.nero.WebExam.photo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.nero.WebExam.photo.service.PhotoMapper;
import co.nero.WebExam.photo.service.PhotoService;
import co.nero.WebExam.photo.service.PhotoVO;

@Repository("photoDao")
public class PhotoServiceImpl implements PhotoService {

	@Autowired
	private PhotoMapper map;
	
	@Override
	public List<PhotoVO> photoSelectList() {
		// TODO Auto-generated method stub
		return map.photoSelectList();
	}

	@Override
	public PhotoVO photoSelect(PhotoVO vo) {
		// TODO Auto-generated method stub
		return map.photoSelect(vo);
	}

	@Override
	public int photoInsert(PhotoVO vo) {
		// TODO Auto-generated method stub
		return map.photoInsert(vo);
	}

	@Override
	public int photoDelete(PhotoVO vo) {
		// TODO Auto-generated method stub
		return map.photoDelete(vo);
	}

	@Override
	public int photoUpdate(PhotoVO vo) {
		// TODO Auto-generated method stub
		return map.photoUpdate(vo);
	}

}
