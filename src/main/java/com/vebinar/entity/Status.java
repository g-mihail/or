package com.vebinar.entity;

import javax.persistence.*;


public enum Status {
    ACTIVE("Открыт"),
    MODERATION("На модерации"),
    REJECTED("Отклонен"),
    CLOSED("Закрыт");

    private String description;

    Status(String description) {
        this.description = description;
    }


    public String getDescription() {
        return description;
    }
}
