package net.infobank.ibwork.dao;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.infobank.ibwork.vo.ListVo;

@Repository("testDao")
public class TestDaoImpl implements TestDao {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
    private SqlSessionTemplate sqlSession;
 /*
    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }
 */
	
    protected void printQueryId(String queryId) {
        if(log.isDebugEnabled()){
        	log.debug("\t QueryId  \t:  " + queryId);
        }
    }
	
	
	@Override
    public List<ListVo> boardList(Map<String, Object> map) {
		printQueryId("board.SQL_LIST");
        return sqlSession.selectList("board.SQL_LIST", map);
    }
	
	
	@Override
	public void boardWrite(Map<String, Object> map) {
		printQueryId("board.SQL_INSERT");
		sqlSession.insert("board.SQL_INSERT", map);
	}
	
	
	@Override
	public Map<String, Object> boardArticle(Map<String, Object> idx) {
		printQueryId("board.SQL_ARTICLE");
		return sqlSession.selectOne("board.SQL_ARTICLE", idx);
	}
	
	@Override
	public void boardDelete(Integer idx) {
		printQueryId("board.SQL_DELETE");
		sqlSession.delete("board.SQL_DELETE", idx);
	}
	
	
	@Override
	public int boardTotalCount() {
		printQueryId("board.SQL_TOTALCNT");
		return sqlSession.selectOne("board.SQL_TOTALCNT");
	}
	
	@Override
	public List<ListVo> boardListAll() {
		printQueryId("board.SQL_LISTALL");
		return sqlSession.selectList("board.SQL_LISTALL");
	}
}
