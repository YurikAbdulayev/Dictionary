package entity;

import javax.persistence.*;

/**
 * Created by anri on 17.04.16.
 */
@Entity
@Table(name = "word")
public class Word {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    private String word;

    private String value;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    public Word(String word, String value) {
        this.word = word;
        this.value = value;
    }

    public Word(String word, String value, Category category) {
        this(word, value);
        this.category = category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
