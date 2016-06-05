package DAOs;

import entity.Word;

import java.util.List;

/**
 * Created by anri on 27.04.16.
 */
public class WordDAO extends BaseDAO<Word> implements WordDAOInterface {


    @Override
    public List<Word> getSortedCategoryWord(int categoryId) {
        return sessionFactory
                .getCurrentSession()
//                .createQuery("from Word\n"+
//                             " where Word.category like categoryId \n" +
//                             "order by Word.word")
                .createSQLQuery("select word\n" +
                        "from word\n" +
                        "where word.category_id like 'categoryId'\n" +
                        "order by word.word")
                .list();
    }
}
