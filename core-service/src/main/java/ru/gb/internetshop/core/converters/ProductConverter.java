package ru.gb.internetshop.core.converters;

import org.springframework.stereotype.Component;
import ru.gb.internetshop.core.entities.Product;
import api.ProductDto;

@Component
public class ProductConverter {
    public ProductDto entityToProductDto (Product product){
        ProductDto productDto=ProductDto.Builder.newBuilder()
                .withId(product.getId())
                .withTitle(product.getTitle())
                .withPrice(product.getPrice())
                .withCategory(product.getCategory().getTitle())
                .build();

//        ProductDto productDto=new ProductDto();
//        productDto.setId();
//        productDto.setTitle();
//        productDto.setPrice();
//        productDto.setCategory();
        return productDto;
    }
}
