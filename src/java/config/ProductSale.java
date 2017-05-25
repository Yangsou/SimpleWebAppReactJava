/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

/**
 *
 * @author wladek
 */
public class ProductSale {

    public ProductSale(String IdProduct, String Name, String Brand, Double PriceCurrent, Double PriceDefault, String Image) {
        this.IdProduct = IdProduct;
        this.Name = Name;
        this.Brand = Brand;
        this.PriceCurrent = PriceCurrent;
        this.PriceDefault = PriceDefault;
        this.Image = Image;
    }

    public String getIdProduct() {
        return IdProduct;
    }

    public String getName() {
        return Name;
    }

    public String getBrand() {
        return Brand;
    }

    public Double getPriceCurrent() {
        return PriceCurrent;
    }

    public Double getPriceDefault() {
        return PriceDefault;
    }

    public String getImage() {
        return Image;
    }

    public void setIdProduct(String IdProduct) {
        this.IdProduct = IdProduct;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public void setBrand(String Brand) {
        this.Brand = Brand;
    }

    public void setPriceCurrent(Double PriceCurrent) {
        this.PriceCurrent = PriceCurrent;
    }

    public void setPriceDefault(Double PriceDefault) {
        this.PriceDefault = PriceDefault;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }
    private String IdProduct;
    private String Name;
    private String Brand;
    private Double PriceCurrent;
    private Double PriceDefault;
    private String Image;
}
