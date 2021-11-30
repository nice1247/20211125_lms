package co.nero.WebExam.photo.service;

import java.util.List;

public interface PhotoMapper {
	List<PhotoVO> photoSelectList();
	PhotoVO photoSelect(PhotoVO vo);
	int photoInsert(PhotoVO vo);
	int photoDelete(PhotoVO vo);
	int photoUpdate(PhotoVO vo);
}
