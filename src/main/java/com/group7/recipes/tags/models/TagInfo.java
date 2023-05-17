package com.group7.recipes.tags.models;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="\"taginfo\"")
public class TagInfo {
    @Id
    private long tag_id;
    private int type;
    private boolean isParent_p;
    private long parentId;
    private long ethnicTagId;
    private boolean defined_p;
    @Id
    @OneToOne (cascade = CascadeType.ALL)
    @JoinColumn(name="tag_id", referencedColumnName = "id")
    private Tag tags;
}
