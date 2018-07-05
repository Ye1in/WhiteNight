package xin.whitenight.dao;

import java.util.List;
import java.util.Map;

public interface IArticleDAO {

	public List getCurrentIT(int currentPage, int pageSize);

	public int getTotalsize();

}
