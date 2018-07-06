package xin.whitenight.service;

import java.util.List;
import java.util.Map;

public interface IArticleService {

	public List getCurrentITT(int currentPage, int pageSize);

	public int getTotalsize();

	public String getArticleByID(int ID);

}
