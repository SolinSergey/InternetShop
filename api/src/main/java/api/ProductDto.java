package api;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "Модель продукта")
public class ProductDto {
    @Schema(description = "ID продукта", required = true, example = "10")
    private Long id;
    @Schema(description = "Наименование продукта", required = true, example = "Оленина")
    private String title;
    @Schema(description = "Цена продукта", required = true, example = "2500")
    private int price;
    @Schema(description = "Категория продукта", required = true, example = "Мясо")
    private String category;

    public ProductDto() {
    }

    public ProductDto(Long id, String title, int price, String category) {
        this.id = id;
        this.title = title;
        this.price = price;
        this.category = category;
    }

    private ProductDto(Builder builder) {
        setId(builder.id);
        setTitle(builder.title);
        setPrice(builder.price);
        setCategory(builder.category);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public static final class Builder {
        private Long id;
        private String title;
        private int price;
        private String category;

        private Builder() {
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        public Builder withId(Long val) {
            id = val;
            return this;
        }

        public Builder withTitle(String val) {
            title = val;
            return this;
        }

        public Builder withPrice(int val) {
            price = val;
            return this;
        }

        public Builder withCategory(String val) {
            category = val;
            return this;
        }

        public ProductDto build() {
            return new ProductDto(this);
        }
    }
}
