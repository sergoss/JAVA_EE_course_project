package ru.mikhalev.enterprise.dao;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ru.mikhalev.enterprise.entity.ProductEntity;

import javax.annotation.PostConstruct;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

public class ProductDAO {

    @NotNull
    private Map<String, ProductEntity> products = new LinkedHashMap<>();

    @NotNull
    public Collection<ProductEntity> getListProducts() {
        return products.values();
    }

    @PostConstruct
    private void init() {
        merge(new ProductEntity("Fallout 4: Game of the Year Edition"));
        merge(new ProductEntity("The Elder Scrolls V: Skyrim Special Edition"));
        merge(new ProductEntity("The Elder Scrolls® Online"));
    }

    @Nullable
    public ProductEntity getProductById(@Nullable final String productId) {
        if (productId == null || productId.isEmpty()) return null;
        return products.get(productId);
    }

    @Nullable
    public ProductEntity merge(@Nullable final ProductEntity product) {
        if (product == null) return null;
        @Nullable final String id = product.getId();
        if (id == null || id.isEmpty()) return null;
        this.products.put(id, product);
        return product;
    }

    public void removeProductById(@Nullable final String productId) {
        if (productId == null || productId.isEmpty()) return;
        products.remove(productId);
    }
}
