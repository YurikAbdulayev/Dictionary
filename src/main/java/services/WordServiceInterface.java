package services;

import entity.Word;

import java.util.List;

/**
 * Created by anri on 30.04.16.
 */
public interface WordServiceInterface {

    List<Word> getWords();
    Word getWordById(int id);
    void addWord(Word word);
    void updateWord(Word word);
    void deleteWord(Word word);

}
