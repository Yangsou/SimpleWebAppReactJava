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
public class Product {
    private String IdProduct;
    private String Name;
    private String IDType;
    private String Detail;
    private String Brand;
    private String ModelNumber;
    private String PartNumber;
    private String DisplayType;
    private String ItemShape;
    private String DialWindowMaterialType;
    private String Clasp;
    private String CaseMaterial;
    private String CaseDiameter;
    private String CaseThickness;
    private String BandMaterial;
    private String BandLength;
    private String BandWidth;
    private String DialColor;
    private String BandColor;
    private String Calendar;
    private String WaterDepth;
    private Double PriceCurrent;
    private Double PriceDefault;

    public String getImage() {
        return Image;
    }
    private String Image;

    public void setImage(String Image) {
        this.Image = Image;
    }
    public String getBandColor() {
        return BandColor;
    }

    public void setBandColor(String BandColor) {
        this.BandColor = BandColor;
    }
    

    public void setIdProduct(String IdProduct) {
        this.IdProduct = IdProduct;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public void setIDType(String IDType) {
        this.IDType = IDType;
    }

    public void setDetail(String Detail) {
        this.Detail = Detail;
    }

    public void setBrand(String Brand) {
        this.Brand = Brand;
    }

    public void setModelNumber(String ModelNumber) {
        this.ModelNumber = ModelNumber;
    }

    public void setPartNumber(String PartNumber) {
        this.PartNumber = PartNumber;
    }

    public void setDisplayType(String DisplayType) {
        this.DisplayType = DisplayType;
    }

    public void setItemShape(String ItemShape) {
        this.ItemShape = ItemShape;
    }

    public void setDialWindowMaterialType(String DialWindowMaterialType) {
        this.DialWindowMaterialType = DialWindowMaterialType;
    }

    public void setClasp(String Clasp) {
        this.Clasp = Clasp;
    }

    public void setCaseMaterial(String CaseMaterial) {
        this.CaseMaterial = CaseMaterial;
    }

    public void setCaseDiameter(String CaseDiameter) {
        this.CaseDiameter = CaseDiameter;
    }

    public void setCaseThickness(String CaseThickness) {
        this.CaseThickness = CaseThickness;
    }

    public void setBandMaterial(String BandMaterial) {
        this.BandMaterial = BandMaterial;
    }

    public void setBandLength(String BandLength) {
        this.BandLength = BandLength;
    }

    public void setBandWidth(String BandWidth) {
        this.BandWidth = BandWidth;
    }

    public void setDialColor(String DialColor) {
        this.DialColor = DialColor;
    }

    public void setCalendar(String Calendar) {
        this.Calendar = Calendar;
    }

    public void setWaterDepth(String WaterDepth) {
        this.WaterDepth = WaterDepth;
    }

    public void setPriceCurrent(Double PriceCurrent) {
        this.PriceCurrent = PriceCurrent;
    }

    public void setPriceDefault(Double PriceDefault) {
        this.PriceDefault = PriceDefault;
    }

    public String getIdProduct() {
        return IdProduct;
    }

    public String getName() {
        return Name;
    }

    public String getIDType() {
        return IDType;
    }

    public String getDetail() {
        return Detail;
    }

    public String getBrand() {
        return Brand;
    }

    public String getModelNumber() {
        return ModelNumber;
    }

    public String getPartNumber() {
        return PartNumber;
    }

    public String getDisplayType() {
        return DisplayType;
    }

    public String getItemShape() {
        return ItemShape;
    }

    public String getDialWindowMaterialType() {
        return DialWindowMaterialType;
    }

    public String getClasp() {
        return Clasp;
    }

    public String getCaseMaterial() {
        return CaseMaterial;
    }

    public String getCaseDiameter() {
        return CaseDiameter;
    }

    public String getCaseThickness() {
        return CaseThickness;
    }

    public String getBandMaterial() {
        return BandMaterial;
    }

    public String getBandLength() {
        return BandLength;
    }

    public String getBandWidth() {
        return BandWidth;
    }

    public String getDialColor() {
        return DialColor;
    }

    public String getCalendar() {
        return Calendar;
    }

    public String getWaterDepth() {
        return WaterDepth;
    }

    public Double getPriceCurrent() {
        return PriceCurrent;
    }

    public Double getPriceDefault() {
        return PriceDefault;
    }
    
    public Product(){
        
    }
    public Product(String IdProduct,
            String Name,
            String IDType,
            String Detail,
            String Brand,
            String ModelNumber,
            String PartNumber,
            String DisplayType,
            String ItemShape,
            String DialWindowMaterialType,
            String Clasp,
            String CaseMaterial,
            String CaseDiameter,
            String CaseThickness,
            String BandMaterial,
            String BandLength,
            String BandWidth,
            String BandColor,
            String DialColor,
            String Calendar,
            String WaterDepth,
            Double PriceCurrent,
            Double PriceDefault,
            String Image) {
        this.IdProduct = IdProduct;
        this.Name = Name;
        this.IDType = IDType;
        this.Detail = Detail;
        this.Brand = Brand;
        this.ModelNumber = ModelNumber;
        this.PartNumber = PartNumber;
        this.DisplayType = DisplayType;
        this.ItemShape = ItemShape;
        this.DialWindowMaterialType = DialWindowMaterialType;
        this.Clasp = Clasp;
        this.CaseMaterial = CaseMaterial;
        this.CaseDiameter = CaseDiameter;
        this.CaseThickness = CaseThickness;
        this.BandMaterial = BandMaterial;
        this.BandLength = BandLength;
        this.BandWidth = BandWidth;
        this.BandColor = BandColor;
        this.DialColor = DialColor;
        this.Calendar = Calendar;
        this.WaterDepth = WaterDepth;
        this.PriceCurrent = PriceCurrent;
        this.PriceDefault = PriceDefault;
        this.Image = Image;
    }
}
