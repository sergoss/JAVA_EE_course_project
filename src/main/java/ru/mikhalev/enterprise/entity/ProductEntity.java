package ru.mikhalev.enterprise.entity;

import org.jetbrains.annotations.Nullable;
import ru.mikhalev.enterprise.api.ProductContract;

import java.util.UUID;

public class ProductEntity implements ProductContract {

    @Nullable
    private String id = UUID.randomUUID().toString();

    @Nullable
    private String name = "";

    @Nullable
    private String shortDescription = "";

    @Nullable
    private String params = "";

    @Nullable
    private String fullDescription = "";

    @Nullable
    private String systemRequariments = "";

    public ProductEntity() {
    }

    public ProductEntity(@Nullable String name) {
        this.name = name;
    }

    @Override
    public @Nullable String getId() {
        return null;
    }

    @Override
    public void setId(@Nullable String id) {

    }

    @Override
    public @Nullable String getName() {
        return null;
    }

    @Override
    public void setName(@Nullable String name) {

    }

    @Override
    public @Nullable String getShortDescription() {
        return null;
    }

    @Override
    public void setShortDescription(@Nullable String shortDescription) {

    }

    @Override
    public @Nullable String getParams() {
        return null;
    }

    @Override
    public void setParams(@Nullable String params) {

    }

    @Override
    public @Nullable String getFullDescription() {
        return null;
    }

    @Override
    public void setFullDescription(@Nullable String fullDescription) {

    }

    @Override
    public @Nullable String getSystemRequirements() {
        return null;
    }

    @Override
    public void setSystemRequirements(@Nullable String systemRequirements) {

    }
}
