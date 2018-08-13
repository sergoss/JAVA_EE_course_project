package ru.mikhalev.enterprise.controller;

import ru.mikhalev.enterprise.dao.ProductDAO;
import ru.mikhalev.enterprise.entity.ProductEntity;

import javax.annotation.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.inject.Inject;
import java.util.Collection;

@ViewScoped
@ManagedBean
public class ProductListController {

    private ProductDAO productDAO;

    @Inject
    public ProductListController(ProductDAO productDAO) {
        this.productDAO = productDAO;
    }

    public Collection<ProductEntity> getListProducts() {
        return productDAO.getListProducts();
    }

}
