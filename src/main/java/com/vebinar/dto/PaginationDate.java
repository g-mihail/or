package com.vebinar.dto;

import org.springframework.stereotype.Component;

//@Component
public class PaginationDate {

    private int pageNumber;
    private int  pagesAvailable;

    public PaginationDate(int pageNumber,  int pagesAvailable) {
        this.pageNumber = pageNumber;
        this.pagesAvailable = pagesAvailable;

    }

    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }


    public int getPagesAvailable() {
        return pagesAvailable;
    }

    public void setPagesAvailable(int pagesAvailable) {
        this.pagesAvailable = pagesAvailable;
    }

    public PaginationDate() {
    }
}
