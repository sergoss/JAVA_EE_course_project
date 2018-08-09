package ru.mikhalev.enterprise.api;

import org.jetbrains.annotations.Nullable;

public interface ProductContract {
    @Nullable
    String getID();

    void setID(@Nullable String id);

    @Nullable
    String getName();

    void setName(@Nullable String name);

    @Nullable
    String getShortDescription();

    void setShortDescription(@Nullable String shortDescription);
// так как парамметры идут таблице, то возможно лучше сделать для них коллекцию
    @Nullable
    String getParams();

    void setParams(@Nullable String params);

    @Nullable
    String getFullDescription();

    void setFullDescription(@Nullable String fullDescription);
// тоже самое что и для системных требований
    @Nullable
    String systemRequirements();

    void setSystemRequirements(@Nullable String systemRequirements);

}
