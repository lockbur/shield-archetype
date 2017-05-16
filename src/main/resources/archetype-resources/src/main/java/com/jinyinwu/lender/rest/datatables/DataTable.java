package com.jinyinwu.lender.rest.datatables;

import com.jinyinwu.lender.rest.Page;
import com.jinyinwu.lender.security.PrivacyDimmer;

import java.util.List;
import java.io.Serializable;

/**
 * 用户前台bootstrap的dataTables组件渲染数据使用
 * Created by wangkun on 2016/11/10.
 */
public class DataTable<T> implements Serializable {
    private int draw;
    private long recordsTotal;
    private long recordsFiltered;
    private List<T> data;

    public DataTable() {
    }

    public DataTable(final Page page, final int draw) {
        this.data = page.getContent();
        this.recordsTotal = page.getTotal();
        this.recordsFiltered = page.getTotal();
        this.draw = draw;
    }

    public DataTable(final Page page, int draw, final boolean dim) {
        this.data = page.getContent();
        this.recordsTotal = page.getTotal();
        this.recordsFiltered = page.getTotal();
        this.draw = draw;
        //dim
        if (dim) {
            for (T t : data) {
                PrivacyDimmer.dim(t);
            }
        }
    }

    public int getDraw() {
        return draw;
    }

    public void setDraw(int draw) {
        this.draw = draw;
    }

    public long getRecordsTotal() {
        return recordsTotal;
    }

    public void setRecordsTotal(long recordsTotal) {
        this.recordsTotal = recordsTotal;
    }

    public long getRecordsFiltered() {
        return recordsFiltered;
    }

    public void setRecordsFiltered(long recordsFiltered) {
        this.recordsFiltered = recordsFiltered;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}
